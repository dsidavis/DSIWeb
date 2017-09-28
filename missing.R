ff = list.files("content", pattern = "\\.md$", recursive = TRUE, full = TRUE)
info = file.info(ff)
head(rownames(info[rev(order(info$mtime)), ]), 20)

w = sapply(ff, function(x) any(grepl("Tags:", readLines(x, warn = FALSE))))
