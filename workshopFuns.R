if(FALSE) {

source("articles.r"); source("workshopFuns.R")
s17 = subset(info, quarter == "Spring" & year == 2017 & category == "Workshop")
d = mkWorkshopPage_md(s17)

w17 = subset(info, quarter == "Winter" & year == 2017 & category == "Workshop")
d = mkWorkshopPage_md(w17)    

s17t = subset(info, quarter == "Spring" & year == 2017 & (category == "Talk" | grepl("Talk|un-seminar|unseminar|problem solving", tags)))
d = mkTalkPage_md(s17t)

#w17t = subset(info, quarter == "Winter" & year == 2017 & (category == "Talk" | grepl("Talk|un-seminar|unseminar|problem solving", tags)))
#d = mkTalkPage_md(w17t)


#    d = mkWorkshopPage(s17)
#    saveXML(d, "content/Spring17Workshops.html")
}

mkTalkPage_md =
function(data,
         itemFun = mkTalkInfo_md,
         quarter = unique(data$quarter), year = unique(data$year),
         template = "content/talk_list.md",
         outfile = sprintf("content/%s%sTalks.md", quarter, substring(year, 3)))
{
  mkWorkshopPage_md(data, itemFun, quarter, year, template, outfile)
}

mkWorkshopPage_md  =
function(data,
         itemFun = mkWorkshopInfo_md,
         quarter = unique(data$quarter), year = unique(data$year),
         template = "content/workshop_list.md",
         outfile = sprintf("content/%s%sWorkshops.md", quarter, substring(year, 3)),
         category = trim(gsub("# ", "", txt[idx])))
{
    data = data[order(data$date),]
    tmpl = readArticle(template)

    txt = strsplit(tmpl$content, "\\n")[[1]]
    idx = grep("# ", txt)
    
    tmpl$Date = format(max(data$date),"%Y-%m-%d")
    tmpl$Title = sprintf("%s %s %s", quarter, year, category)
    
    entries = sapply(1:nrow(data), function(i) itemFun(data[i,]))

    txt[idx] = sprintf("# %s %s %s", quarter, year, category)
    
    ll = as.list(txt)
    i = grep("LIST HERE", txt)
    ll[[i]] = entries
    tmpl$content = paste(unlist(ll), collapse = "\n")
    if(!is.na(outfile)) {
        write.PelicanMD(tmpl, outfile)
    } else 
        structure(tmpl, class = "PelicanMD")

}

write.PelicanMD =
function(doc, outfile)
{
        con = file(outfile, "w")
        on.exit(close(con))
        write.dcf(doc[1, !(names(doc) %in% c("file", "content"))], file = con)
        cat("\n\n", doc$content, file = con, sep = "\n")
        outfile
}

mkWorkshopPage =
function(data, quarter = unique(data$quarter), year = unique(data$year), template = "build/workshop_list.html", doc = htmlParse(template))
{    
    ti = getNodeSet(doc, "//body//*[. = 'Workshops']")[[1]]
    xmlValue(ti) = sprintf("Workshops %s %s", quarter, year)

    lst = getNodeSet(doc, "//body//ol")[[1]]
    removeNodes(xmlChildren(lst))
    entries = lapply(1:nrow(data), function(i) mkWorkshopInfo(data[i,]))
    addChildren(lst, kids = entries)

    doc
}


mkWorkshopInfo_md =
function(info, date.format = "%a. %d, %B")
{
    # can create nodes or just text and then parse into nodes.
  sprintf('1. %s  [%s](%s)', format(info$date, date.format), trim(gsub("Workshop( ?(-|on))?", "", info$title)),  mapFilename(info))
}

mkTalkInfo_md =
function(info, date.format = "%a. %d, %B")
{
    # can create nodes or just text and then parse into nodes.
  sprintf('1. %s  [%s](%s)', format(info$date, date.format), trim(gsub("Workshop( ?(-|on))?", "", info$title)),  mapFilename(info))
}

getTags =
function(str)
{
  sapply(strsplit(str, ",")[[1]], trim)
}

mapFilename =
function(info, md = info$file, slug = computeSlug(info, md))
{
   return(info$.build_file)
    # must be in sync with ARTICLE_SAVE_AS and ARTICLE_URL in pelicanconf.py
   tags = getTags(info$tags)
   sprintf("posts/%s/%s%s.html", tags[1], slug, format(info$date, "%Y%m%d"))
}

computeSlug =
function(info, md = info$file)    
{
    slug = getSlug(info)
    fn = if(!is.na(slug))
            slug
         else {
#        browser()
             tmp = gsub(".*_", "", gsub("\\.md$", "", basename(md)))
             substring(tmp, 1, nchar(tmp) - 1)
         }
}


mkWorkshopInfo =
function(info, date.format = "%a. %d, %B")
{
    # can create nodes or just text and then parse into nodes.
    x = sprintf('<li>  <time style="padding-right: 10pt">%s</time>\n   <a href="%s">%s</a></li>', format(info$date, date.format), "url", gsub("Workshop( ?(-|on))?", "", info$title))
    xmlParse(x, trim = FALSE, replaceEntities = FALSE)
#    top = newXMLNode("li")
#    newXMLNode( , parent = top)

#    top
}



