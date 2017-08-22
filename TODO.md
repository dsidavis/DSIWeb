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
    + [created - please edit] unseminars.html from index.html
    + .edu/pages/main/Collaboration
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
1. [index.md] Rewrite/confirm the text on the first page
1. Propose Projects link on home page - what is it supposed to go to? A form or the collaboration page?
1. Person for the FDA project in collaboration.md
1. Add section somewhere on working groups - current and previous.
1. STS job announcement- fill it out when approved.
1. Plan for Academic unit and programs, HIPs.
1. twitter link in the footer.html template.
1. The related page should separate the davis and external  links on different pages.
1. Think about a new front page that represents the hub/graph and allows people to click on
   different aspects.
    So show research, collaboration, software, training, academic programs, affiliates, etc. as nodes.

#### Done
1. [done] FAQ
    + [done] change "rooms"
    + [done] rephrase courses item.
1. [done] !! Image for workshop and also unseminar series for carousel.	

# Seminars
   + Upcoming
   + Past
   + ?? Use jinja/pelican or R?
   
# Workshops
1. Already a page for these that is auto-paginated.
1. Different quarters grouped
1. Decide on format and then programmatically manipulate these into a page.
  
1.  Information (i.e. documents) are in  content/articles/Past

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
   + Move People tab to come after the About tab and before the Research tab.  I (DTL) don't agree;     I moved it from there
   + Get images for the remaining affiliates. Nick Ulle, Ken Wang, Lida Anita, Abbie Poppa (check
     name spelling), Ryan Peek, Ismail, Yuefeng, Nick Ellinwood, Eric Kalosa-Kenyon, Ehsan Gholami,
     Shaun Geer; 
   + Fix the height of Michael Bissell photo
   + Add photos for Titus and Andrew to faculty affiliates page
   + In content/pages/affiliates.md, who should they send an email to ask to be added to the private  affiliates channel.  Is this page linked from anywhere ? i.e. will people get to it?
	+ Add photos to Admin page for D, N, C, P & M
	+ Add YEAR and Quarter to all events on the "Past Posts" Events Page and organize by date (most
      recent on top). Change page name to "Past Announcements"??
    + Set the Category for workshops/tutorials/etc.
	+ Add all the missing events that are in the events.rss from the old web site  
	+ !!! [done] Add the D-RUG website https://d-rug.github.io/  to page http://dsi.ucdavis.edu/posts/OfficeHours/davis-r-users-group-informal-drop-in-work-session20170820.html. 
        **Whatever you don't add it to the html file. That is autogenerated.**
    + [done see content/proposeProject.md] When you click "propose a project" it takes you to the collaborations page, which is okay but
      it's a bit unclear where to propose on that page. 
	   Yes, a new page needs to be written.
	+ Font all over the entire website is small....
	+ Top of the Office Hours page, get rid of Spring 2017 and instead write: "Below are our typical weekly office hours. If you plan to come, we encourage you to contact us in advance because our hours are subject to change, especially during the summer."
	+ [moved] Workshops tab under Events just takes you to the homepage.
	    [done] Suggest moving it from Research to under Events. - It was in both.
		Need to generate workshop.html page (programmatically).
	+ For the Suggest a Workshop, "this form" link says special permissions are needed. PRobably okay, but not sure why if won't let me access it on campus. https://docs.google.com/forms/d/1PJN-ifhOdUsFIX5cGl7y1pSldPsOfnT1MCO4Fat2DWA/formrestricted?edit_requested=true
    + Mark Redican in people.md has a link to dsi.ucdavis.edu.

#### Done
1. [done] Move "Space" page from under Research to About.
1. [done] fix name Michael Bissell (add L to end)
   
# Bring from other site
   + Any left?
   + [done] Put the events.rss file into this repos.

# BROKEN LINKS
	+ [position not live yet] Jobs: http://dsi.ucdavis.edu/posts/Job/faculty-position-for-data-studies-in-science-and-technology-studies-and-data-science20170901.html
	+ [fixed] People->faculty members->membership page http://www.dsi.ucdavis.edu/About/Membership/  Should be http://dsi.ucdavis.edu/membership.html
	+ [fixed] Clicking on more for the FAQ is the DSI interested in collaborations link is broken, goes here: http://dsi.ucdavis.edu//Collaboration.html
	+ [fixed] Also under FAQ the Here for how to find out about events is broken, goes here: http://dsi.ucdavis.edu//Signup.html
	+ [fixed] Clicking on listserv on the Workshops page is broken, http://dsi.ucdavis.edu//signup.md. Spring 2017 and Winter 2017 are also broken.
	

