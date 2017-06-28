Title: DSI-developed Software
Authors: DSI

# Software Development
As part of the projects we work on in the DSI, we develop
general purpose software and make it publically available.
The code is typically available via the DSI github account 
https://github.com/dsidavis.


## Extracting Content from PDF Documents
Numerous projects have involved extracting data from PDF documents.
We needed general tools so that we could create customized extraction approaches.
Some of the data are in tables, figures/plots, different columns on a page, 
in specific sections, or identified by particular fonts.

We adapted various tools working with PDF documents, including pdftohtml, poppler and pdfminer.  We
are currently working with pdftohtml and the poppler libraries.  We have have an evolving
enhancement of pdftohtml at (https://github.com/dsidavis/pdftohtml) that exports additional
structural information from the PDF.  This includes lines, rectangles, colors, etc. that allow us to
recover information based on the structure of a page.

## ReadPDF
To facilitate the processing of the output from the enhanced pdftohtml
code,  we provide an R package [ReadPDF](https://github.com/dsidavis/ReadPDF) that presents
the PDF as a list of pages and provides high-level functions
for extracting text, text by column, text by font, titles, dates, 
text by position, lines, etc.


## Optical Character Recognition
A non-trivial number of data sources are scanned documents, 
i.e. images of each page, not PDF or Word documents.
We developed an R package (RTesseract)[https://github.com/duncantl/Rtesseract] 
to provide an interface to the tesseract OCR engine to enable us to extract this data. 
The interface provides rich access to information about the recognized text,
i.e., the words, the individual characters, their locations, the confidence in the recognition
of each element, line segments.

## SPARQL
The Semantic Web and Linked-data are very important in the Web stack.
We enhanced the RSPARQL package with the code at https://github.com/dsidavis/RSPARQL.
This adds support for JSON, improves the XML support, corrects and simplifies
some of the queries and adds several new features.

## Customized Extraction from Complex PDF Tables
Using the enhanced pdftohtml version above, we developed tools
to extract data from specific pages of over 800 LCAP documents
that can be applied to multiple years.
This is available at https://github.com/dsidavis/LCAP.


In a separate project, we extracted data from hundreds of pages
of tables from crop yield data in both PDF and scanned documents.


## Querying the Scopus API with R
We implemented an R interface to the Scopus REST API to query
various aspects of the academic publication database.
This allows us to 
See [RScopusAPI](https://github.com/dsidavis/RScopusAPI).

Subsequently, the ropensci group developed the [rscopus](https://github.com/muschellij2/rscopus)
package that is worth using.


## XML to CSV Files
Converting simple XML documents to CSV files 
is a convenient way to convert, for example,
StackOverflow data dump files.
We developed code at 
https://github.com/dsidavis/SAX2CSV
to facilitate this.

## Web Scraping Hadiths

