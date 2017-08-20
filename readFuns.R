getArticleFiles =
function(dirs = c("Past", "Recent"), path = "content/articles")
{
  d = paste(path, dirs, sep = .Platform$file.sep)
  unlist(lapply(d, list.files, pattern = "\\.(html|md)$", full.names = TRUE))
}

readArticle =
function(file, lines = readLines(file, warn = FALSE))
{
    i = grep("^[[:space:]]*$", lines)[1]
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
