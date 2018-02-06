Title: Image Analysis and Fast Indexing of Content
Date: 2016-3-29
Category: Talk
Tags: Talk
nonews: true

# Image Analysis and Fast Indexing of Content
## Carl Stahmer

Carl Stahmer will present informally on  National Endowment for the
Humanities funded research to develop an open source, content based image
recognition (CBIR) platform for traversal of archives of historical
printed materials.  In its current release, the software package, known as
Arch-V (short for Archive Vision), utilizes a process that creates bags of
features for each image based on extracted SURF feature points.   These
bags are then indexed for fast searching using SOLR/Lucene .  Current
development is focused on moving past the Bayesian bag of features
approach to include consideration of next nearest neighbors as well as the
identification of statistically significant feature sets for each image.
The challenge is to find ways to represent significant feature clusters in
a manner that still allows for fast indexing and on-the-fly addition of
new images to the collection without the need for brute force matching to
each image already in the collection.  After a brief  discussion of the
underlying methods employed by the application, the group will discusses
possible solutions to the data representation and analysis problems the
project is currently confronting.
