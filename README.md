# UC Davis DSI Website

## Developer Installation

Requirements:

* [Git](https://git-scm.com/) (>= 2.0.0)
* [Python](https://www.python.org/) 2 (>= 2.7.0) or Python 3 (>= 3.3.0)

Use git to download a copy of this repository to your machine, and switch the
newly-created directory.
```bash
git clone https://github.com/karenyyng/DSI_pelican_config.git
cd DSI_pelican_config
```

We recommend you use Python's virtualenv package to create a dedicated Python
installation (a _virtual environment_) for building the site. Details on
virtualenv can be found [here][virtualenv] or [here][virtualenv-karen]. To set
up the virtual environment:
```bash
virtualenv --no-site-packages venv
source venv/bin/activate
```

Finally, install the Python packages required to build the website.
```bash
pip install -r requirements.txt  
```

Now you're set up and ready to go!

[virtualenv]: http://docs.python-guide.org/en/latest/dev/virtualenvs/
[virtualenv-karen]: http://karenyyng.github.io/using-virtualenv-for-safeguarding-research-project-dependencies.html


### Building Themes

The website's theme uses a customized version of [Bootstrap][] based on
[Bootswatch][]. If you plan to edit the `.scss` files used to build the theme,
an additional requirement is:

* [Node.js](https://nodejs.org/) (>= 4.6.0)

Then install the npm packages required to build the theme.
```bash
npm install
```

[Bootstrap]: http://getbootstrap.com/
[Bootswatch]: http://bootswatch.com/


## Usage

[Pelican][] is a Python package for generating static websites from HTML and
Markdown. The DSI website uses [Invoke][http://www.pyinvoke.org/] as a build system for Pelican.

To list all supported build commands, run:
```bash
invoke --list
```

A typical workflow is to edit files in `content/` and then rebuild the site.
```bash
invoke build
```
The built site files are placed in `build/`.

If you want to preview the site after building, you can instead run:
```bash
invoke serve
```
This builds and then serves the site at <http://localhost:8000/>.

Note that you don't need to and shouldn't rebuild the site's theme unless
you've edited a `.scss` file. If you do want to rebuild the site's theme, run:
```bash
invoke build.theme
```
To build the production view of the website:
```bash
invoke publish
```
This version of the site files have absolute URL with setting specified in the 
`publishconf.py` file.

[Pelican]: http://docs.getpelican.com/en/stable/
[Invoke]: http://www.pyinvoke.org/


## What are all these files?

```
├── build             # Files built by running `invoke build`
├── content           # Files that control the site's content
│   ├── articles        # Posts / announcements
│   ├── images          # Image files
│   ├── pages           # Permanent pages
│   └── pdfs            # PDF files
├── plugins           # Pelican plugins
├── theme             # Files that control the site's appearance
│   ├── flatly          # .scss files for building Bootstrap
│   ├── static          # CSS, font, and JavaScript files
│   ├── templates       # HTML template files
├── LICENSE           # MIT license
├── package.json      # Required Node.js packages
├── pelicanconf.py    # Pelican configuration for development
├── publishconf.py    # Configuration for production, uses and can override 
											# settings from pelicanconf.py
├── README.md         # This file
├── requirements.txt  # Required Python packages
└── tasks.py          # Invoke tasks
```

### Articles for the DSI site
```
├── content           # Files that control the site's content
│   ├── articles        # Posts / announcements
|   		├--Recent         # where markdown files of articles live 
|       ├--Past      
```
Under articles, there are two folders, `Recent` and `Past`.
They are the categories of the articles and each article can only belong to one category.
`Pelican` generates index pages for articles under each category at `$SITEURL/category/$CATEGORY_NAME.html`.
In which case, `$CATEGORY_NAME=recent` or `$CATEGORY_NAME=past`

For more details, see the Pelican docs on [content][pelican-content] and
[configuration][pelican-conf]. The template files use [Jinja2][] for variable
substitution in the html template files.

[pelican-content]: http://docs.getpelican.com/en/3.6.3/content.html
[pelican-conf]: docs.getpelican.com/en/3.6.3/settings.html
[Jinja2]: http://jinja.pocoo.org/docs/
[pelican-plugins]: https://github.com/getpelican/pelican-plugins

### Adding Content

Posts (articles) and pages can be written in Markdown or HTML. Below are
examples of writing a post; writing a page is similar, but pages are permanent
parts of the site and don't have timestamps.

#### Markdown

Posts written in Markdown should follow this format:
```markdown
Title: My super title
Authors: DSI Affiliate
Date: 2010-12-03 10:20
Tags: R, packages, statistics
Summary: Short version for index and feeds

This is the content of my super blog post.
```
The only required metadata field is the title and it needs to be specified on
the first line of the markdown file. If the date is not specified, it
is automatically set to the last time the file was modified.

#### HTML

Posts written in HTML should follow this format:
```html
<html>
    <head>
        <title>My super title</title>
        <meta name="authors" content="DSI Affiliate" />
        <meta name="date" content="2012-07-09 22:28" />
        <meta name="tags" content="R, packages, statistics" />
        <meta name="summary" content="Short version for index and feeds" />
    </head>
    <body>
        This is the content of my super blog post.
    </body>
</html>
```
As with Markdown posts, the only required metadata field is the title, and if
the date is missing, it's automatically set to the last time the file was
modified.

`Pelican` also generates index pages for articles under each tag at `$SITEURL/tag/$TAGNAME.html`.

## Post Order
The posts are ordered by their creation date.
Also we have separate category listings.  

## Possible issue rendering `$` with LaTeX
All the words enclosed by the `$` symbols or `$$` will be rendered as LaTeX.
A single `$` may also make the font look funny, use \\\$ to show the dollar
sign.
See the README for the [render_math](https://github.com/getpelican/pelican-plugins/tree/master/render_math)
plugin for usage.


## Tipuesearch Patch
See this [Github issue](https://github.com/talha131/pelican-elegant/issues/147)
for details about a bug in the Tipuesearch plugin. @karenyyng has worked around
the issue by addding
```python
node = {
  'title': page_title,
  'text': page_text,
  'tags': page_category,
  'url': page_url,
  'loc': page_url
} 
```
to `pelican-plugins/tipue_search/tipue_search.py`.



