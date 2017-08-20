if(FALSE) {
ll = readLines("affiliates.md")

j = grep("(^| )\\*[^*].*\\*", ll)
ll[j] = gsub("(\\*[^*]+[^.])\\*", "*\\1.**", ll[j])

i = grep("^\\*\\*\\[",ll)

tmp = as.list(ll)

tmp[i] = lapply(ll[i], mkAffLine)


#ll[j]

cat(unlist(tmp), file  = "affiliates.md", sep = "\n")
}

