source("funs.R"); source("readFuns.R")
ff = getArticleFiles()
arts = lapply(ff, readArticle)

table(unlist(lapply(arts, names)))
