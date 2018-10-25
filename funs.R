mkAffLine =
function(x)
{
    email = gsub("^.*(\\(mailto:[^\\)]+\\)).*", "\\1", x)

    email = gsub("[()]", "", gsub(": ", ":", email))
    name = gsub("^\\*\\*\\[([^]]+)].*", "\\1", x)
    imgName = sprintf("images/Affiliates_pics/%s_c.jpg", gsub(" ", "", name))
    if(!file.exists(imgName))
        imgName = "images/incognito.png"

    img = sprintf('<img src="%s" title="%s"></img>', imgName, email)

    line = gsub("(\\(mailto:[^)]+\\))", sprintf('<a href="mailto:%s"><img src="images/email1600.png" class="emailIcon"></a>', email), x)   

    c(img, line)
}



mkAffiliates_md =
function(file = "affiliates.dcf", data = read.dcf(file, all = TRUE), template = "../LocalTemplates/affiliates_template.md", outfile = "affiliates.md", photoDir = getOption('PhotoDir', 'images/Affiliates_pics'), title = NA)
{
   if(!("photo" %in% names(data)))
       data$photo = NA
       
   pdoc = subset(data, role == 'postdoc')
   if(nrow(pdoc) > 0)
       pdocs = mkDCFAffiliates(, pdoc, photoDir = photoDir)
   else
       pdocs = character()

   students = mkDCFAffiliates(, subset(data, is.na(role) | role != 'postdoc'), photoDir = photoDir)

   tmpl = readLines(template)
   if(grepl("<!--", tmpl[1])) 
     tmpl = tmpl[ - (1:grep("-->", tmpl)[1]) ]

   i = grepl("## (Postdocs|Graduate Students)", tmpl)


   if(!is.na(title)) {
       i = grep("^Title: ", tmpl)
       if(length(tmpl))
           tmpl[i] = sprintf("Title: %s", title)
   }
   
   txt = unlist(mapply(function(a, b) c(a, unlist(b)),
                 split(tmpl, cumsum(i)), list(character(), pdocs, students)))

   cat("NOTE: DO NOT EDIT MANUALLY", txt, file = outfile, sep = "\n")
}


mkDCFAffiliates =
function(file = "affiliates.dcf", data = read.dcf(file, all = TRUE), photoDir = getOption('PhotoDir', 'images/Affiliates_pics'))
{
   data[] = lapply(data, trim)    
   sapply(1:nrow(data), function(i)  mkAffiliate(data[i,], photoDir))
}

trim = 
function (x) 
    gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)

mkAffiliate =
function(i, photoDir = getOption('PhotoDir', 'images/Affiliates_pics'))
{

    img = sprintf('<img src="%s" title="%s"></img>', getImage(i$name, i$photo, photoDir), i$email)
    email = sprintf('<a href="mailto:%s"><img src="images/email400.png" class="emailIcon"></img></a>', i$email)
    c('<div class="person">',
      img,
      email,
      sprintf('<a href="%s">%s</a>', i$url, i$name),
      paste(if(is.na(i$role)) "graduate student" else i$role, ", ", i$location, " <br/>", collapse = "", sep = ""),
      paste("<b>", i$title, "</b>", collapse=  ""),
      convertMarkup(i$desc),
      "</div>",
      "",
      ""
     )
}


convertMarkup =
function(x)
{
    x = gsub("\\*\\*([^*]+)\\*\\*", "<b>\\1</b>", x)
    x = gsub("\\[([^]]+)\\]\\(([^)]+)\\)", '<a href="\\2">\\1</a>', x)
    x
}

getImage =
function(name, photo, photoDir = getOption('PhotoDir', 'images/Affiliates_pics'))
{

    imgName = sprintf("%s/%s_c.jpg", photoDir, gsub(" ", "", if(!is.na(photo)) photo else name))
#if(!is.na(photo)) message("photo for ", name)
    if(!file.exists(imgName))
        imgName = "images/incognito.png"
    
    imgName
}

