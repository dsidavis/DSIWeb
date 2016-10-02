#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

# File Locations
# ==============
# Where to find content files (markdown, html, ...):
PATH = "content/"
# Files under PATH to copy without parsing the content:
STATIC_PATHS = ["images", "pdfs"]

# Where to find theme files (css):
THEME = "theme/"

# Where to find plugins:
PLUGIN_PATHS = ["plugins/"]

# Where to save the website after building:
OUTPUT_PATH = "build/"


# Site Configuration
# ==================
# Metadata
# SITENAME = u"Data Science Initiative"
SITENAME = ""
SITEURL = "https://karenyyng.github.io/something_nice"
AUTHOR = "UC Davis DSI Affiliates"
DEFAULT_LANG = u"en"

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

RELATIVE_URLS = True  # dev view
# RELATIVE_URLS = False  # production view

# Parsed html files will follow have the same
# file prefixes as the original markdown files
FILENAME_METADATA = '(?P<slug>.*)'

# Pelican themes
BOOTSTRAP_THEME = "flatly"


# Site Content
# ============
# Icon for browser tabs
FAVICON = "images/favicon.ico"

# Whether to have a banner image and the options
# BANNER = 'images/dsi-logo-rgb-text-96dpi.jpg'
BANNER = 'images/dsi_banner.png'
BANNER_SUBTITLE = None
BANNER_ALL_PAGES = False
BOOTSTRAP_FLUID = False
RECENT_POST_COUNT = 6

# DO NOT REMOVE THIS, this tells which template html should be added
DIRECT_TEMPLATES = ('index', 'categories', 'authors', 'archives', 'search')

# Event / tutorial post indices
INDEX_SAVE_AS = 'blog_index.html'

# PLUGINS
PLUGINS = [
    u"tipue_search",
    u"render_math",
]

SHOW_DATE_MODIFIED = True
DISPLAY_RECENT_POSTS_ON_SIDEBAR = True

# How many event to show on event main page
DEFAULT_PAGINATION = 8

# SEARCH_URL = 'search.html'

# ARTICLE / EVENT POST SETTINGS
ARTICLE_SAVE_AS = '{slug}{date:%Y}.html'
ARTICLE_URL = '{slug}{date:%Y}.html'
USE_FOLDER_AS_CATEGORY = True
# ARTICLE_ORDER_BY = 'attribute'
SHOW_ARTICLE_CATEGORY = True
SHOW_ARTICLE_AUTHOR = True

# What to display on top menu bar
SITELOGO = 'images/dsi_brand_logo.png'
SITELOGO_SIZE = 75  # width of icon
DISPLAY_PAGES_ON_MENU = False
DISPLAY_CATEGORIES_ON_MENU = False
# We control all the menu items via a list
MENUITEMS = [
    ('About', [
        ('Mission', 'pages/Mission.html'),
        ('People', 'pages/People.html'),
        ('Directions', 'pages/Directions.html'),
        ('FAQ', 'pages/FAQ.html'),
        ('Contact us', 'mailto:datascience@ucdavis.edu'),
    ]),
    ('Services', [
        ('Consulting', 'pages/Services.html'),
        ('Collaboration', 'pages/Collaboration.html'),
        ('Workshops & Training', 'pages/Training.html'),
        ('Suggest a Workshop', 'pages/Training.html#Suggest-a-workshop'),
        ('Space', 'pages/Space.html'),
    ]),
    ('Resources', [
        ('Courses', 'pages/Courses.html'),
        ('Tutorials', 'tag/tutorial.html'),
        ('Languages', 'pages/Languages.html'),
        ('Data Sciences New Sources', 'pages/News.html'),
    ]),
    ('Events', [
        ('Announcements', 'category/recent.html'),
        ('Past events', 'category/past.html'),
        ('Calendar', "pages/Calendar.html")
    ]),
    ('Related', [
        ("Institute for Social Science", "http://socialscience.ucdavis.edu/"),
         ("Davis R Users Group",
            "http://www.noamross.net/davis-r-users-group.html"),
         ("Data @ UC Davis", "http://data.ucdavis.edu/"),
         ("Statistics RTG", "http://www.stat.ucdavis.edu/research/nsf-rtg"),
         ("Statistics Lab", "http://www.stat.ucdavis.edu/stat-lab/services.html"),
         ("John Muir Institute of the Environment",
             "http://johnmuir.ucdavis.edu/"),
         ("ICIS", "http://icis.ucdavis.edu/"),
         ("CITRIS", "http://citris-uc.org/"),
         ("Keck Caves", "http://keckcaves.org/"),
         ("Center for Spatial Sciences", "http://spatial.ucdavis.edu/"),
    ]),
]

HIDE_SIDEBAR = True
# What to display on sidebar as buttons
SOCIAL = (
    ('Mailing List', 'pages/Signup.html'),
    ('Become An Affiliate',
        'https://docs.google.com/forms/d/e/'
        '1FAIpQLSdCT72MtNyEcTcbOP7bj76tkPw85H9Co1R_WxYKZu67gxzb7Q/viewform'),
)
#
# links on sidebar
# LINKS = None

