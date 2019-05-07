Title: DSI Workshop: R's C Interface
Date: 5/17/2019
Time: 9-12pm
Where: DSI (Shields 360)
Category: Events
Tags: Workshop, Spring 2019, R, C/C++
xnonews: true
slug: 2019WorkshopRC

#  Working with C/C++ Code in R

* [Register](https://forms.library.ucdavis.edu/classes/descriptions.php)
* [Recording will be uploaded after the event]()
* [Github repo with notes, code, etc.]()


## Description

In this workshop, we'll discuss how to call C/C++ code (and hence other languages) from R.
This allows us to reuse existing C/C++ code, or to write our own C/C++ code to improve the speed
of some computations.

We'll cover the .C(), .Call() interfaces, and using the [Rcpp](http://www.rcpp.org/) framework,
and discuss some of their trade-offs and pitfalls.

Importantly, we'll present:
+ a high-level introduction to the C/C++ languages (limited to interfacing to R)
+ the steps involved in "compiling" code (compiling, linking, loading)
+ how to debug compiled code from within R
+ R's computational model for working in C/C++
+ issues of portable code across operating systems,
+ how to enhance packages you write to customize themselves to a specific machine using
  [autoconf](https://www.gnu.org/software/autoconf/)/[cmake](https://cmake.org)
+ a variety of tips and tricks that are often learned the hard, long way!

After this workshop participants should be able to:
+ compile, link and load existing C/C++ code into R
+ call a C routine from R
+ write a simple C routine and call it from R
+ debug C code called from R
+ understand garbage collection and PROTECT()/UNPROTECT() in C
+ understand the R's C-level Application Programming Interface (API)

While this material is not conceptually complex, it is somewhat technical.
Being familiar with this material makes you a more advanced R user and gives you different
options for efficiently solving computational challenges.
The workshop will get you started quickly and answer questions about problems you might
have already encountered.

## Prerequisites & Target Learners

This workshop is aimed at students, postdoctoral scholars, faculty, staff who are
comfortable working with R. You don't need to know C or C++ to learn something from the workshop.

For those wanting to follow along on their computers, please ensure that you have
installed a compiler such as gcc or clang, and the Rcpp package.
On Windows, install Rtools.