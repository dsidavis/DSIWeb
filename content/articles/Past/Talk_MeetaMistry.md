Date: 2016-4-27
Time: 9.15-12.15
Category: Talk
Tags: Talk, gene expression
Title: Differential Gene Expression using R

# Differential Gene Expression using R

<p>For RNA-seq data, the strategy taken is to count the number of reads 
that fall into annotated genes and to perform statistical analysis on 
the table of counts to discover quantitative changes in expression 
levels between experimental groups. Easy, right? Not exactly.
</p>

<p>
1. We have integer counts and not continuous measurements. Data is 
not normally distributed, so statistical methods we applied to microarray 
data don't work here.
</p>
<p>
2. Replication levels in designed RNAseq experiments tend to be modest, 
often not much more than two or three. As a result, there is a need for 
statistical methods that perform well in small sample situations.
</p>
<p>
3. There is a dependence of variance on the mean (which changes with increasing 
number of replicates)
</p>

<p>
Solution: Appropriate modeling of the mean-variance relationship in DGE data is 
important for making inferences about differential expression. Employing methods 
which assess the mean-variance relationship to help with the problem of estimating 
biological variability for experiments with a small number of replicates.
</p>

<p>
In this module, learners will use R Statistical Software to walk through activities 
designed to compare the performance of different tools (edgeR, DESeq2, limma-voom) 
for differential expression analysis of RNA-Seq data, and how the mean-variance 
relationship is addressed in datasets with increasing number of replicates.
</p>
<p>
This workshop will be taught remotely and broadcast to our classroom via Google 
Hangouts on Air. We will have helpers in our local room to facilitate the lesson. 
The lesson will also be streamed to YouTube and saved there for viewing at a later time.
</p>
<p>
For more information, see: <a href="http://dib-training.readthedocs.org/en/pub/2016-04-27-diff-exp-br.html">http://dib-training.readthedocs.org/en/pub/2016-04-27-diff-exp-br.html</a>
</p>
<p>
Davis participants register here (only if planning to come to the classroom):
<a href="https://www.eventbrite.com/e/differential-expression-workshop-tickets-24603796618">https://www.eventbrite.com/e/differential-expression-workshop-tickets-24603796618</a>
</p>

<p>
<b>Attendance policy:</b> 
If you register for this workshop but cannot attend, please release your spot on 
EventBrite or contact Jessica Mizzi (jessica.mizzi@gmail.com). If you register but 
do not attend (which takes up a spot that could have gone to someone on our waitlist!), 
you may not be able to register for future workshops.
</p>
