1. Add Quarter to the metadata of workshops, tutorials, etc., e.g.,
```
Quarter: Fall
```

1. To have a job not appear in the jobs.html, add 
```
noshow: true
```
in the metadata.
We could probably  use draft and exclude these.

1. To have an entry appear in the first group of the News feed, set the category
to `APriority`.
Unfortunately, this means that it is no longer in the original category!



1. Introduce a new category with 
```
Category: name
```
If you want this to be considered for the News on the front page,
edit pelicanconf.py and add the name to EVENTS_TAGS









1. Before creating any of the pages for previous seminars, workshops, etc. , 
   build the web site. This generates build/filemap.html which provides the 
   mapping from original md file to the html file in build.
