# A01 Introduction to R
##########################
# part i  Assignment 
# part ii Basic mathematical operations
# part iii Creating a simple numeric vector
# Part iv Characteristics of a vector
# Part v Basic statistical operations
#########################
 
x<-14
y<-8

functions
sqrt()      - square root
abs()       - Absolute value 
exp()	   - The exponential
log(,b)     - logarithm to the base "b". The default setting is the natural log.
 
factorial()       - computes factorials
choose()         - computes binomial coefficients


##############################
Generating Sequences 
R has a number of ways to generate sequences of numbers. 
These include the simplest approach, using the the colon ":", e.g.

> 1:10
[1] 1 2 3 4 5 6 7 8 9 10


###############################
> X = 5:10
> Y = 8:12
>
> X
[1]  5  6  7  8  9 10
>
> Y
[1]  8  9 10 11 12
>
> union(X,Y)
[1]  5  6  7  8  9 10 11 12
>
> intersect(X,Y)
[1]  8  9 10
