#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals
"""
All the variables listed in this file are available to the HTML template files
using Jinja2 syntax.
"""

# File Locations
# ==============
# Where to find content files (markdown, html, ...):
PATH = "content/"

# Files under PATH to copy *without* parsing the content:
# 'pages/' is the only exception that the html and md files will still be parsed
STATIC_PATHS = ["images", "pdfs", "media", "pages"]

# Where to find theme files (css):
THEME = "theme/"

# Where to find plugins:
PLUGIN_PATHS = ["plugins/"]

# Where to save the website after building:
OUTPUT_PATH = "build/"

# Site-wide Configuration
# ==================
# Metadata
SITENAME = "UC Davis Data Science Initiatve"  # configure at publishconf.py
SITEURL = ""   # configure at publishconf.py
AUTHOR = "UC Davis DSI"  # default author
DEFAULT_LANG = "en"

# Time
DEFAULT_DATE = 'fs'
CHECK_MODIFIED_METHOD = 'mtime'
DEFAULT_DATE_FORMAT = '%a %b %d %I:%M%p PST %Y'
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
# ============
# Icon for browser tabs
FAVICON = "images/favicon.ico"

# DO NOT REMOVE THIS, this tells which template html should be generated
# as part of build/
DIRECT_TEMPLATES = ('index', 'categories', 'archives', 'search')


# PLUGINS
# =========
PLUGINS = [
    u"tipue_search",
    u"render_math",
]

MATH_JAX = {'process_escapes': True}

# Page / article saving Configuration
# ==================
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
MAIN_PAGE_FOLDER = 'pages'

# Home page options
# =================
BANNER = 'images/dsi_banner.png' # the image for main homepage banner
RECENT_POST_COUNT = 6  # number of posts displayed on homepage banner
# The tags displayed in the `News` columns on the homepage
EVENTS_TAGS = ['Workshop', 'Bootcamp', 'Talk', 'Symposium']
OPPORTUNITIES_TAGS = ['Job']
RESOURCES_TAGS = ['OfficeHours']


# What to display on top menu bar
# ================================
SITELOGO = 'images/dsi_brand_logo.png'
SITELOGO_SIZE = 75  # width of icon
DISPLAY_PAGES_ON_MENU = False
DISPLAY_CATEGORIES_ON_MENU = False
# We control all the menu items via a list
MENUITEMS = [
    ('About', [
        ('Mission', MAIN_PAGE_FOLDER + '/mission.html'),
        ('Membership', MAIN_PAGE_FOLDER + '/membership.html'),
        ('Mailing List', MAIN_PAGE_FOLDER + '/signup.html'),
        ('Giving', MAIN_PAGE_FOLDER + '/giving.html'),
        ('FAQ', MAIN_PAGE_FOLDER + '/faq.html'),
        ('Directions', MAIN_PAGE_FOLDER + '/directions.html'),
        ('Contact Us', 'mailto:datascience@ucdavis.edu')
    ]),
    ('People', [
        ('Administration', MAIN_PAGE_FOLDER + '/administration.html'),
        ('Faculty', MAIN_PAGE_FOLDER + '/faculty.html'),
        ('Affiliates', MAIN_PAGE_FOLDER + '/affiliates.html'),
    ]),
    ('Services', [
        ('General Information', MAIN_PAGE_FOLDER + '/services.html'),
        ('Collaboration', MAIN_PAGE_FOLDER + '/collaboration.html'),
        ('Workshops & Training', MAIN_PAGE_FOLDER + '/workshops.html'),
        ('Office Hours', MAIN_PAGE_FOLDER + '/officeHours.html'),
        ('Space', MAIN_PAGE_FOLDER + '/space.html'),
    ]),
    ('Events', [
        ('Announcements', 'category/recent.html'),
        ('Past Events', 'category/past.html'),
        ('Workshops', ''),
        ('Calendar', MAIN_PAGE_FOLDER + "/calendar.html")
    ]),
    ('News', ''),
    ('Resources', [
        ('Courses', MAIN_PAGE_FOLDER + '/courses.html'),
        ('Tutorials', 'tag/tutorial.html'),
        ('Technologies', MAIN_PAGE_FOLDER + '/technologies.html'),
        ('Related Links', MAIN_PAGE_FOLDER + '/related_links.html'),
    ]),
]

# What to display on top menu as buttons
SOCIAL = () 

# ARTICLE GLYPHICONS, they come by default with bootstrap flatly theme
GLYPHICON = {
    "Workshop": "glyphicon glyphicon-education",
    "Bootcamp": "glyphicon glyphicon-education",
    "Job": "glyphicon glyphicon-briefcase",
    "Talk": "glyphicon glyphicon-blackboard",
    "Symposium": "glyphicon glyphicon-blackboard",
    "Announcement": "glyphicon glyphicon-bullhorn",
    "Video": "glyphicon glyphicon-film",
    "Collaboration": "glyphicon glyphicon-link",
    "OfficeHours": "glyphicon glyphicon-comment",
    "Courses": "glyphicon glyphicon-book"
}
