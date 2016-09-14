# What are these files  ?
Which files should I look at?
* `bootstrap3-theme`: template files from the popular JS / CSS framework [Bootstrap](http://getbootstrap.com/) that is free to use but not sell. These change how the styles / locations of content.
* content - main content files of the website, e.g. words, specification of
		links, what the content files are for. Read [content](http://docs.getpelican.com/en/3.6.3/content.html) doc to see what options are available.
  
* [pelican-plugins](https://github.com/getpelican/pelican-plugins) some useful
		widgets to add functionality to the generated site 
* `something_nice` - website files generated with [Pelican](http://docs.getpelican.com/en/3.6.3/), a Python static site generator.
The generator parser uses the aforementioned content to spit out the site.
* `pelicanconf.py` - this contains most of the configurations of how the site
		should be generated, what plugins to use (`tipue_search` and `render_math`) and the specification of what goes into the top menu
		navigation bar of the generated site etc. Read [settings](docs.getpelican.com/en/3.6.3/settings.html) doc to see how this works.
 
# How does Pelican work?
a theme file that contains
* Jinja2 annotations on the html templates  
* bootstrap / other CSS / JS  


# Cloning the entire repo, including the submodules
```
$ git clone --recursive git@github.com:karenyyng/DSI_pelican_config.git
```
This will allow you to clone also the processed `html` files for version control.
[Submodules tutorial](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

# Installation steps
## Installing Pelican and its dependencies in a virtualenv 
See this [article](http://karenyyng.github.io/using-virtualenv-for-safeguarding-research-project-dependencies.html) for 
detailed instructions.
But if you have Python `virtualenv` installed, the instructions are as simple
as:
```
$ cd $GIT_REPO_PATH
$ virtualenv --no-site-packages ENVNAME  # installs virtualenv in the folder
$ source $ENVNAME/bin/activate   # this activates the virtualenv
# this installs the list of Python modules for running Pelican
$ pip install -r requirements.txt  
```
This assumes that you have not appended any Python library paths to your system
`PYTHONPATH` variable in `~/.bashrc` / `~/.bash_profile` file.

## Installing themes 
You also need to install the website html and css themes 
```bash
$ pelican-themes -i $THEME_PATH
```
where 
```
THEME_PATH=$GITHUB_REPO_PATH/bootstrap3-theme
```

# Usage 
```
$ make html  # regenerates the files 
$ make serve  # starts local server for the development view, relative URLs
will be used   
```
And you will be able to preview your blog at a local address
`http://localhost:8000`.
Or if you want the files to be automatically updated when changes are made, use:
```
$ make devserver
```

When everything looks fine. You can generate the website for upload through the settings of 
`publishconf.py`
```
$ make publish  # make the production version of the website with absolute URLs
```


# How to add / modify the content of the website
The content files are under these paths and can be in either markdown or html
formats. 
```
content
|________articles  # these files are treated as posts / announcements
					# the following are folders that will added as category tags to posts
					|____events 
					|____tutorials
					|____opportunities 
					|____services 
|
|________pages     # these files are more permenant part of the website
|________images    # these images are copied to the images folder of the generated site files 
```

## writing in html
The only required content for a `html` post is a `<title>TITLE</title>` in the `<head></head>`
node. But here is an example:
```html
<html>
    <head>
        <title>My super title</title>
        <meta name="tags" content="Awesome R packages" />
        <meta name="category" content="Statistical computing" />
        <meta name="summary" content="Short version for index and feeds" />
    </head>
    <body>
        This is the content of my super blog post.
    </body>
</html>
```

## writing in markdown
Otherwise, in a `markdown` content file the __first line__ in each post __must be__ 
```markdown
Title: ACTUAL_title
```

Make the files then 
* the post date will be automatically generated based on the last modified file
		system time `mtime` 
* the post index page will be automatically updated 
* you can specify the order of the posts by using specifying `metadata` tag 
`<meta name=ARTICLE_ORDER_BY content="{ATTRIBUTE_PRIORITY_NUMBER}"/>`
in the `html` head node section. But you need to add this metadata for ALL the articles.
Also you need to uncomment the line `ARTICLE_ORDER_BY = 'attribute'` inside
`pelicanconf.py`
		See [post](http://stackoverflow.com/questions/18520046/how-can-i-control-the-order-of-pages-from-within-a-pelican-article-category).

# Changing the look of the website
Make sure that after you made changes to the templates, you update the theme by
```
$(VIRTUALENV) pelican-theme -U $PATH_TO_THEME_FOLDER
```
`pelican-theme` is an executable that only exists inside the `VIRTUALENV`
when your terminal prompt is changed.
The `PATH_TO_THEME_FOLDER` for us is `$GITHUB_REPO/bootstrap3-theme`

# changing CSS templates 
The `css` templates are installed within the `virtualenv` so that is the `css`
that you want to modify
e.g. under
`${VIRTUALENV}/lib/python2.7/site-packages/pelican/themes/{THEME_NAME}/static/css/`

The theme that we use is at
`${VIRTUALENV}/lib/python2.7/site-packages/pelican/themes/bootstrap3-theme/static/css/bootstrap.flatly.min.css`

# changing the html templates 
The html templates are at:
`${VIRTUALENV}/lib/python2.7/site-packages/pelican/themes/bootstrap3-theme/templates`


# Troubleshoot Pelican installation
if you have trouble making the Pelican site, make sure the `virtualenv` is
activated. 
Other tips can be found in this [article](http://karenyyng.github.io/using-virtualenv-for-safeguarding-research-project-dependencies.html). 


# Known issue with Tipuesearch that I patched in the 
See [Git issue](https://github.com/talha131/pelican-elegant/issues/147)
Add 
`
node = {'title': page_title, 'text': page_text, 'tags': page_category, 'url': page_url, 'loc': page_url} 
`
to `pelican-plugins/tipue_search/tipue_search.py`



