# Tips for modifying the templates with Jinja2 

List of category, tag objects are NOT strings.
To get them in the form of a string, do 
```
{{ article.tags[0].name }}
```
http://docs.getpelican.com/en/3.6.3/themes.html#object-author-cat-tag
