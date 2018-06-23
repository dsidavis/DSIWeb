all: affiliates.md facultyaffiliates.md

affiliates.md: affiliates.dcf ../funs.R affiliates_template.md GNUmakefile
	Rscript -e 'source("../funs.R") ; mkAffiliates_md()'

facultyaffiliates.md: facultyaffiliates.dcf ../funs.R affiliates_template.md GNUmakefile
	Rscript -e 'source("../funs.R") ; mkAffiliates_md("facultyaffiliates.dcf", template = "facultyaffiliates_template.md", outfile = "facultyaffiliates.md", photoDir = "images/Faculty_pics") '


