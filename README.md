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
$ make serve  # starts local server 
```
And you will be able to preview your blog at a local address
`http://localhost:8000`.

# How to modify content of the website
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




# Troubleshoot Pelican installation
if you have trouble making the Pelican site, make sure the `virtualenv` is
activated. 
Other tips can be found in this [article](http://karenyyng.github.io/using-virtualenv-for-safeguarding-research-project-dependencies.html). 


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

# Known issue with Tipuesearch that I patched
See [Git issue](https://github.com/talha131/pelican-elegant/issues/147)
Add 
`
node = {'title': page_title, 'text': page_text, 'tags': page_category, 'url': page_url, 'loc': page_url} 
`
to `pelican-plugins/tipue_search/tipue_search.py`



