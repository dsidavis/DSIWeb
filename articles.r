source("funs.R"); source("readFuns.R")

ff = getArticleFiles()
arts = lapply(ff, readArticle)

# Check on the names of the meta data
table(unlist(lapply(arts, names)))

info = readArticleInfo(ff, arts)

i = grep("workshop|tutorial|bootcamp", tolower(info$tags))
byq = with(info[i, ], split(info[i,] , list(year, quarter)))



