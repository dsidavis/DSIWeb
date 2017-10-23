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

1. To have an entry appear in the first group of the News feed, set the
`Priority` attribute (the value does not matter).

1. Use tags for labelling rather than categories. Set tags with:
```
Tags: tag1, tag2
```
The first tag may receive special treatment.

1. Categories are used for structure and set by subdirectory names in the
`articles/` directory. Only set the `Category` attribute as an override.

1. If you want an article to be considered for the News on the front page,
place it in `articles/News/`.









1. Before creating any of the pages for previous seminars, workshops, etc. , 
   build the web site. This generates build/filemap.html which provides the 
   mapping from original md file to the html file in build.
