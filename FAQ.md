# FAQ for building the site

# Known issues 
## My build broke without reason
* check that you are at the root of the directory when you use `invoke` to
		build the site.

## I cannot build the article into html
Possible causes:
* make sure that the __articles__ that you have modified follow the format
		that set `pelicanconf.py` with `{TAG}_{SLUG}.md` or `{TAG}_{SLUG}.html`
* you have not specified a `<title>` tag in the `<head>` node for html. Or your
		`Title: ` line in markdown format is not the first line.

## HTML specific issues
* Pelican only retains the html nodes of type `<body>`, `<title>` and `<meta>` during parsing.
		Please put your `<script>` tags within `<body>` as a workaround. 
		If you really think your CSS files are important, add the styles at
		`theme/static/css/style.css`. If your your have multiple files for `CSS`,
		open up an issue.

* the `html` files rendered with many `Lang:en` tags. 
	Remove lines such as `<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">`
`
	
* there are many warnings about `variants` of a page. `Pelican` uses the title
		metadata / html node data as the `slug` and it has to be unique. If you
		have several pages with the same `title` and `date`, it will warn you and
		may quit.
