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
