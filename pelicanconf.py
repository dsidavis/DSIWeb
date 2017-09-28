#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals
"""
All the variables listed in this file are available to the HTML template files
using Jinja2 syntax.
"""

# File Locations
# ----------------------------------------
# Where to find content files (markdown, html, ...):
PATH = "content"

# Files under PATH to copy *without* parsing the content:
# 'pages/' is the only exception that the html and md files will still be parsed
STATIC_PATHS = ['images', 'pdfs', 'media', 'pages']

# Where to find theme files (css):
THEME = 'theme'

# Where to find plugins:
PLUGIN_PATHS = ['plugins']

ARTICLE_PATHS = ['articles']
PAGE_PATHS = ['']

# Where to save the website after building:
OUTPUT_PATH = 'build'

# Site-wide Configuration
# ----------------------------------------
# Metadata
SITENAME = "UC Davis Data Science Initiatve"  # configure at publishconf.py
SITEURL = ""   # configure at publishconf.py
AUTHOR = "UC Davis DSI"  # default author
DEFAULT_LANG = "en"

# Time
DEFAULT_DATE = 'fs'
CHECK_MODIFIED_METHOD = 'mtime'
DEFAULT_DATE_FORMAT = '%a %b %d %I:%M%p %Y'
TIMEZONE = 'America/Los_Angeles'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

RELATIVE_URLS = True  # development view
BOOTSTRAP_THEME = "flatly"  # Pelican themes
HIDE_SIDEBAR = True
HIDE_SITENAME = True
DISPLAY_RECENT_POSTS_ON_SIDEBAR = False

# Site-wide Content
# ----------------------------------------
# Icon for browser tabs
FAVICON = "images/favicon.ico"

# DO NOT REMOVE THIS, this tells which template html should be generated
# as part of build/
DIRECT_TEMPLATES = ('index', 'categories', 'archives', 'search', 'jobs', 'filemap')


# PLUGINS
# ----------------------------------------
PLUGINS = ["tipue_search", "render_math"]

MATH_JAX = {'process_escapes': True}


# Page/Article Configuration
# ----------------------------------------
# Parse file metadata from the file name of the article / page files
# See Python Group regex syntax for the below pattern grabs the groups
FILENAME_METADATA = '(?P<tags>.*)_(?P<slug>.*)..*'

# Index of all article posts
INDEX_SAVE_AS = 'announcements.html'
# How many posts to show on the index page
DEFAULT_PAGINATION = 8

# ARTICLE / EVENT POST SETTINGS
ARTICLE_SAVE_AS = 'posts/{tags[0]}/{slug}{date:%Y%m%d}.html'
ARTICLE_URL = 'posts/{tags[0]}/{slug}{date:%Y%m%d}.html'
USE_FOLDER_AS_CATEGORY = True
SHOW_ARTICLE_CATEGORY = True
SHOW_ARTICLE_AUTHOR = True
SHOW_DATE_MODIFIED = True

# Page settings
PATH_METADATA = '(?P<path_no_ext>.*)\..*'
PAGE_SAVE_AS = '{path_no_ext}.html'
PAGE_URL = '{path_no_ext}.html'


# Home Page Options
# ----------------------------------------
BANNER = 'images/dsi_banner.png' # the image for main homepage banner
RECENT_POST_COUNT = 20  # number of posts displayed on homepage banner
# The tags displayed in the `News` columns on the homepage
# APriority is to put this first alphabetically.
EVENTS_TAGS = ['APriority', 'CFP', 'Job', 'Workshop', 'Bootcamp', 'Talk', 'Symposium', 'Seminar', 'OfficeHours', 'Recent', 'WorkingGroup']
OPPORTUNITIES_TAGS = ['Job']
RESOURCES_TAGS = ['OfficeHours', 'CFP']


# Menu Bar Options
# ----------------------------------------
SITELOGO = 'images/dsi_brand_logo.png'
SITELOGO_SIZE = 75  # width of icon
DISPLAY_PAGES_ON_MENU = False
DISPLAY_CATEGORIES_ON_MENU = False
# We control all the menu items via a list
MENUITEMS = [
    ('About', [
        ('Mission', 'mission.html'),
        ('Membership', 'membership.html'),
        ('Mailing List', 'signup.html'),
        ('Giving', 'giving.html'),
        ('FAQ', 'faq.html'),
        ('Space', 'space.html'),
        ('Directions', 'directions.html'),
        ('Contact Us', 'mailto:datascience@ucdavis.edu')
    ]),
    ('Research', [
        ('Services', 'services.html'),
        ('Office Hours', 'office_hours.html'),        
        ('Collaboration', 'collaboration.html'),
        ('Software Development', 'software.html'),
        ('Github Repos.', 'https://github.com/dsidavis')
    ]),
    ('Events', [
        ('Announcements', 'category/recent.html'),
        ('Workshops/Training', 'workshops.html'),
        ('Calendar', 'calendar.html'),
        ('Past Events', 'category/past.html'),
        ('Categories', 'categories.html')        
    ]),
#    ('News', ''),
    ('People', [
        ('Administration', 'administration.html'),
        ('Faculty', 'faculty.html'),
        ('Affiliates', 'affiliates.html'),
    ]),    
    ('Resources', [
        ('Jobs', 'jobs.html'),
        ('Courses', 'courses.html'),
        ('Tutorials', 'tag/tutorial.html'),
        ('Technologies', 'technologies.html'),
        ('Related Links', 'related_links.html'),
    ]),
]

SOCIAL = () # menu bar buttons

# ARTICLE GLYPHICONS, they come by default with bootstrap flatly theme
GLYPHICON = {
    "Workshop": "glyphicon glyphicon-education",
    "Bootcamp": "glyphicon glyphicon-education",
    "WorkingGroup": "glyphicon glyphicon-education",    
    "Job": "glyphicon glyphicon-briefcase",
    "Talk": "glyphicon glyphicon-blackboard",
    "Symposium": "glyphicon glyphicon-blackboard",
    "Announcement": "glyphicon glyphicon-bullhorn",
    "Video": "glyphicon glyphicon-film",
    "Collaboration": "glyphicon glyphicon-link",
    "OfficeHours": "glyphicon glyphicon-comment",
    "CFP": "glyphicon glyphicon-comment",    
    "Courses": "glyphicon glyphicon-book"
}
