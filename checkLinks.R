library(XML)
library(RCurl)

checkLinks =
function(u, doc = htmlParse(u), links = getHTMLLinks(doc), recursive = TRUE, collector = new.env(parent = emptyenv()))
{
#    browser()
    links = table(links)
    todo = setdiff(names(links), ls(envir = collector))
    ans = sapply(todo, urlExists, docName(doc), USE.NAMES = FALSE)
    if(recursive) {
browser()
        if(!is.logical(recursive))
            recursive = recursive - 1
        list2env(as.list(a), collector)

        todo = setdiff(names(ans)[ans], ls(envir = collector))
        sapply(todo, checkLinks, recursive = recursive, collector = collector)
        collector
    } else
       ans
}


urlExists =
function(u, base = "./foo")
{
    u = XML:::trim(u)
    
    if(grepl("^(http|ftp)", u))
        return(structure(url.exists(u), names = u))

    if(grepl("^mailto:", u))
        return(structure(TRUE, names = u))

    u = mkRelative(u, base)    
    structure(file.exists(u), names = u)
}

mkRelative =
function(file, baseDoc)
{
    ans = getRelativeURL(file, baseDoc)
    gsub("/\\./", "/", ans)
}

