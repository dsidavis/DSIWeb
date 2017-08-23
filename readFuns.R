getArticleFiles =
function(dirs = c("Past", "Recent"), path = "content/articles")
{
  d = paste(path, dirs, sep = .Platform$file.sep)
  unlist(lapply(d, list.files, pattern = "\\.(html|md)$", full.names = TRUE))
}

readArticle =
function(file, lines = readLines(file, warn = FALSE))
{
    i = min(grep("^[[:space:]]*$", lines)[1], length(lines), na.rm = TRUE)
    j = grep("^(\\*\\*|__)[A-Z][a-z]+( [A-Za-z]+)?\\1:", lines)
    i = max(i, j)
    rest = lines[-(1:i)]
    head = lines[1:i]

    head = head[!grepl("^[[:space:]]*$", head)]
    meta = as.data.frame(read.dcf(textConnection(head)), stringsAsFactors = FALSE)

    names(meta) = gsub("__|\\*\\*", "", names(meta))

#    if(length(j) &&)
    
    meta$content = paste(rest, collapse = "\n")

    if(!("Date" %in% names(meta)))
        meta$Date = format(file.info(file)[1, "mtime"], "%Y-%m-%d")

    meta$file = file
    
    meta
}

getYearQuarter =
function(df, date = parseDate(df$Date))
{
    if("Quarter" %in% names(df))
        qtr = df$Quarter
   
}

computeQuarter =
function(data)
{
    q = c("Winter", "Spring", "Summer", "Fall")
    q[ cut(data$yday, c(-1, 86, 170, 262, 367)) ]
#   [ cut(data$month, c(-1, 4, 7, 9, 12)) ]    
}

parseDate =
function(x)
{
    d = as.POSIXct(strptime(x, "%Y-%m-%d"))
    w = is.na(d)
    d[w] = as.POSIXct(strptime(x[w], "%m/%d/%Y")  )
    w = is.na(d)    
    d[w] = as.POSIXct(strptime(x[w], "%Y-%m-%d %H:%M"))
    w = is.na(d)    
    d[w] = as.POSIXct(strptime(x[w], "%m/%d/%Y %H:%M"))
    d
}


getCategory =
function(article)
{
    if("Category" %in% names(article))
        return(article$Category)

    basename(dirname(article$file))
}

getSlug =
function(x)
{    
    if("slug" %in% names(x))
       x$slug
    else
       NA
}


getFileInfo =
function(src = "build/filemap.html", lines = readLines(src, warn = FALSE))
{
    i = grep("^# (START|END)$", lines)
    txt = lines[seq(i[1]+1, i[2]-1)]
    con = textConnection(txt)
    d = read.table(con, sep = ";", header = TRUE, stringsAsFactors = FALSE)
    d$path = gsub(".*/content/", "content/", d$path)
    d
}



readArticleInfo =
function(ff = getArticleFiles(), arts = lapply(ff, readArticle), pinfo = getFileInfo())
{

    dt = sapply(arts, `[[`, "Date")
    dt = as.POSIXlt(d <- parseDate(dt))
    info = data.frame(date = d, year = 1900 + dt$year, month = dt$mon, 
                      day = dt$mday, dow = dt$wday, yday = dt$yday,
                      file = ff, stringsAsFactors = FALSE)

    qt = sapply(arts, `[[`, "Quarter")
    info$quarter = sapply(qt, function(x) if(is.null(x)) NA else x)

    w = is.na(info$quarter)
    info$quarter[w] = computeQuarter(info[w,])

    info$title = sapply(arts, `[[`, "Title")
    info$tags = sapply(arts, `[[`, "Tags")
    info$category = sapply(arts, getCategory)

    info$slug = sapply(arts, getSlug)

    info$.build_file = pinfo$saveas[ match(info$file, pinfo$path) ]

    info
}
