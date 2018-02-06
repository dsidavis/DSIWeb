Title:  DSI Workshop: Working with and Creating R Packages
Date: 1/19/2018
Time: 9:30-12 pm
Where: DSI Classroom, 360 Shields Library
Category: Workshop
Tags: Workshop, Tutorial, Winter 2018, Packages, R
xnonews: true

# Working with and Creating R Packages

## Description:

This Data Science Initiative (DSI) workshop is all about R packages - both using them effectively, creating them for your own use, and how to create and publish packages for others.  Packages can be used to simplify your own workflows by organizing and installing data and/or your own code across different projects and across different machines.  They also share your ideas and functionality with others and can count as "publications". Packages are very simple to create, once you know how.  And this workshop will address all levels of working with packages. This workshop is led by the DSI Director and Professor of Statistics, Duncan Temple Lang.  For questions or to send suggestions for future workshop topics, email datascience@ucdavis.edu.

Prerequisites: 
Only basic knowledge of R required. 

No registration is required for this event.

* [Recording](https://youtu.be/ntFrolMI3Ng)
* [Resources](https://github.com/dsidavis/RPackagesWorkshop)

### Notes:
* What is a package? 
	* An installable unit (a collection of functions and/or data)
	* should have documentation
	* should be easy to install and share
* Incentive for organizing data into packages? 
	* It's easier to install a package rather than sourcing all the files (data, functions, etc.)
* Working with packages: 
	* install.packages("package.tar.gz", repos=NULL) 
	* repos=NULL for if you're working locally. Important if you don't want R to go to CRAN to get it. But, it won't get dependencies.
* devtools:install_github"dsidavis/RMinPackage"). Installs directly from source. Potential problems?
	* package, especially packages under development, may not be stable (will it install?) 
	* source could be changing
	* it may not be binary (i.e., you could need a compiler)
* Installing from shell can be faster:
	* R CMD INSTALL package.tar.gz
	* R CMD INSTALL packageDirectory
* Setting your repository: 
	* options() $repos
	* not all mirrors are made equal
* Where is a package installed?
	* library function loads a package. But, a library is really a directory containing multiple installed packages
	* How do we tell R where to look for its packages? ~/Rpackages
	* library(package, lib.loc="~/Rpackages")
	* available.packages( ) goes to mirror and asks for all packages (returns metadata)
	* list.files(.libPaths()[1])  gives package names
	* ~/.Rprofile can be a text file with code and it will get run every time you open R. In there you can put in commands to call .libPaths() and have it conditionally decide what to do based on the machine you are on, etc.
		* Or, can specify the shell environment variable R_LIBS or R_LIBS_USER to be a colon separated list of directories
* Package - loading and attaching
	* when install a package, it just downloads and puts it into your directory. 
	* to load a package, typically use library()
		* library(package, pos = #) lets you set where it appears in the search path
	* if you don't want to attach it, you have to use :: operator (example: readr::read.csv)
		* example: function called trim can't be seen in the XML package, but if you use XML:::trim (triple colon) lets you be able to see it
	* the call library() loads AND attaches the package. When use :: it just loads but NOT attaches (won't have conflicts in the search path)
	* when get rid of a package use detach()
* Writing a package
	* you can turn your utility code into a package
		* if writing it for yourself, you don't have to include documentation, etc (but you should!)
		* if you aren't sharing with others, it's a lot easier to make package 
	* writing a GOOD R package is software engineering
		* needs to be robust: check class/type of inputs, lengths, NAs
		* provide meaningful error messages
		* provide good documentation (help pages are required; examples are also very useful, vignettes are even more useful)
		* make functions flexible
	* you can get academic credit for writing a package
* Anatomy of a package
	* RStudio can click "make a package"; can also use kitten to make a package
	* directory required to have:
		* DESCRIPTION file
			* Package: name of the package; doesn't have to be the same as the name of the directory you create for the package
			* Title: more info about the package
			* Author: name
			* Maintainer: who will be maintaining the package and email address <email>
			* License: 
			* Version:  number formatted as: major-minor.patch 
			* Collate: useful to tell the order in which to load the functions (especially important if being installed on machines with different alphabets!)
		* NAMESPACE file
		* R directory
	* Example with making new package [RMinPackage](https://github.com/dsidavis/RPackagesWorkshop/tree/master/RMinPackage)
		* R CMD INSTALL RMinPackage
	* additional directories
		* man - help files
		* tests - tests to check the package
		* data - data provided by the package
		* inst - other files to be installed with the package
	
* Further Reading:
	* [R Packages](http://r-pkgs.had.co.nz/)
	
	
	
	