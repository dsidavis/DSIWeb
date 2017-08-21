To have a job not appear in the jobs.html, add 
```
noshow: true
```
in the metadata

To have an entry appear in the first group of the News feed, set the category
to `APriority`.
This means that it is no longer in the original category!



Introduce a new category with 
```
Category: name
```

If you want this to be considered for the News on the front page,
edit pelicanconf.py and add the name to EVENTS_TAGS



