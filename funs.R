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

    line = gsub("(\\(mailto:[^)]+\\))", sprintf('<a href="%s"><img src="images/email1600.png" class="emailIcon"></a>', email), x)   

    c(img, line)
}



mkAffiliates_md =
function(file = "affiliates.dcf", data = read.dcf(file, all = TRUE), template = "affiliates_template.md", outfile = "affiliates.md")
{
   pdoc = subset(data, role == 'postdoc')
   pdocs = mkDCFAffiliates(, pdoc)
   students = mkDCFAffiliates(, subset(data, is.na(role) | role != 'postdoc'))

   tmpl = readLines(template)
   i = grepl("## (Postdocs|Graduate Students)", tmpl)


   txt = unlist(mapply(function(a, b) c(a, unlist(b)),
                 split(tmpl, cumsum(i)), list(character(), pdocs, students)))

   cat("<!-- DO NOT EDIT MANUALLY -->\n", txt, file = outfile, sep = "\n")
}


mkDCFAffiliates =
function(file = "affiliates.dcf", data = read.dcf(file, all = TRUE))
{
   data[] = lapply(data, trim)    
   sapply(1:nrow(data), function(i)mkAffiliate(data[i,]))
}

trim = 
function (x) 
    gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)

mkAffiliate =
function(i)
{

    img = sprintf('<img src="%s" title="%s"></img>', getImage(i$name), i$email)
    email = sprintf('<a href="%s"><img src="images/email400.png" class="emailIcon"></img></a>', i$email)
    c(img,
      email,
      sprintf('<a href="%s">%s</a>', i$url, i$name),
      paste(if(is.na(i$role)) "graduate student" else i$role, ", ", i$location, " <br/>", collapse = "", sep = ""),
      paste("<b>", i$title, "</b>", collapse=  ""),
      i$desc,
      "",
      ""
     )
}

getImage =
function(name)
{
    imgName = sprintf("images/Affiliates_pics/%s_c.jpg", gsub(" ", "", name))
    if(!file.exists(imgName))
        imgName = "images/incognito.png"
    
    imgName
}

