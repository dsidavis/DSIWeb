# Web site

## Appearance
1. !! If the window is too small, the menus disappear.
     Remove the @class in <div class="nav-collapse collapse">
	 But then it doesn't collapse, but goes vertical.
	    search for: bootstrap flatly navbar menus disappear
1. [low] Put buttons at top like the ISS
     + Subscribe  News  Events  Give
     + Make these buttons a header on each page.		

# Check
1. Check all links
1. Workshops links.
1. carousel links - workshops.

#### Done
1. [done] Fix the news entries that appeared when we added.
    Easy to introduce as a Category: Talk and not Past
	

# New Structured Pages
1. Order the news item by some other criteria.
    + Currently you can set the Category to APriority.
    + exclude items with nonews attribute set to true.
1. Template for workshops, seminars  - XML or Markdown or DCF
    + Figure out how to do group bys in the templates. Or do this in R.
1. [started] Page for current jobs
    + See jobs.html.  Can build a new template file for this and just look at the categories named Jobs and either in
    + Format the resulting HTML page better to separate the current anb previous jobs.
    + [done] Recent or check for expired is defined.
	
#### Done	
1. [done] In the carousel, have the text wrap around the image.
    + See experiment
	+ Sort out the column structure and offset
1. [done] in categories.html (via the template) format the date/time better
   + [done] for jobs, drop the time
   + [done] drop the PST everywhere - see pelicanconf.py's DEFAULT_DATE_FORMAT variable.
   + [no need] can post process the .html with R if we want.
      doc = htmlParse("build/categories.html")
	  getNodeSet(doc, "//time")
1. [done] [index.md] Reformat the first page so the news and events don't dominate and nobody sees the
   material below
     With fewer old events in the Upcoming Events, this will be less of an issue.
	 But perhaps have these three topics also cycle through like the banner at the top.
1. [done] Get rid of the old events in the upcoming events.
1. [fixed] Search doesn't lead to valid link.
      https://github.com/talha131/pelican-elegant/issues/147

# Content
Write or edit/complete
1. Add in all the other events that are not in the .md files, 
   + ie. from earlier. See events.rss from original web site
   + and separate out the unseminar talks into separate files.
1. [index.md] Rewrite the text on the first page
1. Propose Projects link on home page - what is it supposed to go to? A form or the collaboration page?
1. [done] FAQ
    + [done] change "rooms"
    + [done] rephrase courses item.
1. Person for the FDA project in collaboration.md
1. Add section on working groups.
1. STS job announcement.
1. Plan for Academic unit and programs, HIPs.
1. twitter link
1. The related page should separate the davis and external  links on different pages.

1. [done] !! Image for workshop and also unseminar series for carousel.	

# Seminars
   + Upcoming
   + Past
   + ?? Use jinja/pelican or R?
   
# Workshops
1. Already a page for these that is auto-paginated.
1. Different quarters grouped
1. Decide on format and then programmatically manipulate these into a page.
  
  Information (i.e. documents) are in  content/articles/Past

# Calendar
merge all calendars of events.
+ See CalendarSync
+ Get and merge the calendar information from the different  calendars via OAuth2
+ generate events
+ display calendards in 


# Jobs
   + [done] Add to menus under Resources.
   + [done] on front page in "News" or something related
   + list of jobs. See categories.

# @DTL Content Verify
   + Our Research Software from DSI.
      [check] software.md
   + Review (i.e. Read) the collaborations.
   + [done] Unlink the opportunities   



# [OKAY] Affiliates  content/affiliates.md -
   + Grid layout?
   + Blurb has a "read more" to expand inline, or a popup or bring to a different page.

   + [done] Single colun layout
   + [done] Automate the page generation.
   + [done] fix the errors.



# Miscellaneous
   + Get images for the remaining affiliates.
   + Fix the height of Michael Bissels.
   + In content/pages/affiliates.md, who should they send an email to ask to be added to the private
  affiliates channel.  Is this page linked from anywhere ? i.e. will people get to it?

# Bring from other site
   + Any left?
   + [done] Put the events.rss file into this repos.



