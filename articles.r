source("funs.R"); source("readFuns.R")
ff = getArticleFiles()
arts = lapply(ff, readArticle)

table(unlist(lapply(arts, names)))

dt = sapply(arts, `[[`, "Date")
dt = as.POSIXlt(d <- parseDate(dt))
info = data.frame(date = d, year = 1900 + dt$year, month = dt$mon, day = dt$mday, dow = dt$wday, yday = dt$yday, file = ff,
                  stringsAsFactors = FALSE)

qt = sapply(arts, `[[`, "Quarter")
info$quarter = sapply(qt, function(x) if(is.null(x)) NA else x)

w = is.na(info$quarter)
info$quarter[w] = computeQuarter(info[w,])

info$title = sapply(arts, `[[`, "Title")
info$tags = sapply(arts, `[[`, "Tags")


i = grep("workshop|tutorial|bootcamp", tolower(info$tags))

byq = with(info[i, ], split(info[i,] , list(year, quarter)))
