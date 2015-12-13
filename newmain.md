MS4024 Lecture Notes Week 9

MS4024 Lecture Notes Week 9
Objects
Probability distributions
Other Mathematical Functions
Complex numbers
Trigonometric  Functions
Useful R commands for linear algebra
Numerical methods
Measures of Centrality and Dispersion
Histograms
Graphics
Descriptive Statistics
Inference procedures





Objects

As with many advanced programming languages, R distinguishes between several types of object.
Those types includes scalar, vector, matrix, time, series data frames functions and graphics.
The R function str applied to any R onject, including R functions
Probability distributions
The discrete uniform distribution
parameters: min , max.
The default values are 0 and 1.

Other Mathematical Functions
 
Complex numbers
x = -1 ;  sqrt(x)  ;  str(x) ;               # variable is defined as numeric, not complex.
y = -1 +0i ;  sqrt(y)  ;  str(y) ;                  #variable is defined as complex .
Trigonometric  Functions
pi                                                        #returns the value of pi to six decimal places
sin(3.5*pi)                                          # correct answer is -1
cos(3.5*pi)                         	             # correct answer is zero
Useful R commands for linear algebra
# Linear Algebra
# construct a three-by-three matrix. Values entered by column.
Mat1 = matrix(c(1,2,2,0,5,0,1,2,3),ncol=3)
?matrix           	          	          	             # access the help function entry for “matrix”.
Mat1                         	          	             #print the matrix on the screen.
dim(Mat1)                         	             #determine the dimensions.
Mat1 = t(Mat1)                             #transpose the matrix permanently.
det(Mat1)           	          	             #calculate the determinant. Is it non-zero?
solve(Mat1)            	          	             #calculate the inverse.
eigen(Mat1)           	          	             #compute eigenvalues and eigenvectors .
names(eigen(Mat1))           	             # determine the name.
eigen(Mat1)$values            	             #access the eigenvalues.
 

Numerical methods
Matrrix “Mat2” is a positive definite symmetric matrix.
Dvls = diag(Mat1)           	             # extract vector of the diagonal elements of 'Mat1'
Dvls                                                        #print to screen
as.matrix(Dvls)                         	             # display the vector in matrix form (3R1C)
t(as.matrix(Dvls)           	             # transpose of above              (1R3C)
Idty = diag(c(1,1,1))                            # create the identity matrix
Idty                                                        #print to screen
Dgnl = diag(diag(Mat1))              # create a 'D' matrix               (courework: diagonalization)
Dgnl                                                       
Dvls * Idty           	          	             # alternative method with scalar multiplication.
           	          	          	             # N.B.  Dvls is a vector, not a matrix.
Dgnl.inv = solve(Dgnl)                            # invert the D matrix
Dgnl.inv                           
Rmdr = Mat1 - Dgnl           	             # Compute the "Remainder" matrix (elementwise subtraction)
# construct a positive definite symmetric three-by-three matrix
Mat2 = matrix(c(1,3,1,3,13,7,1,7,6),ncol=3)
chol(Mat2)           	          	             #Cholesky decomposition of Matrix A
 
 
 
var( Mat1[,1] )                                          # determine the variance of the first column
var ( Mat1[,2] )                                          # determine the variance of the second column
var ( Mat1[3,] )                                          # determine the variance of the third row
cov ( Mat1[,1], Mat1[,2] )              # covariance of the first two columsn
var ( Mat1)                                          # variance covariance matrix of all columns
VCmat=var( Mat1)                            # Save as matrix “VCmat”
cor ( Mat1)                                          # correlation matrix of all columns
cov2cor( VCmat)                            #convert a VC matrix to a correlation matrix
 
seq() and rep() provide convenient ways to a construct vectors with a certain pattern. 
> seq(10) 
 [1]  1  2  3  4  5  6  7  8  9 10 
> seq(0,1,length=10) 
 [1] 0.0000000 0.1111111 0.2222222 0.3333333 0.4444444 0.5555556 0.6666667 
 [8] 0.7777778 0.8888889 1.0000000 
> seq(0,1,by=0.1) 
 [1] 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 
> rep(1,3) 
[1] 1 1 1 
> c(rep(1,3),rep(2,2),rep(-1,4)) 
[1]  1  1  1  2  2 -1 -1 -1 -1 
> rep("Small",3) 
[1] "Small" "Small" "Small" 
> c(rep("Small",3),rep("Medium",4)) 
[1] "Small"  "Small"  "Small"  "Medium" "Medium" "Medium" "Medium" 
> rep(c("Low","High"),3) 
[1] "Low"  "High" "Low"  "High" "Low"  "High"

Descriptive Statistics and Basic Graphical Methods
Measures of Centrality and Dispersion
# Anscombe’s  Quartet
X1 = c(
Y1 =

Histograms
 
>sd(X)
[1]
 
Introduction to Statistical Computing
Broadly speaking, the aim of statistics is to understand data and the relationships between variables. Due to the growth in information technology, data sets have grown considerably as the capacity for data collection and storage has increased.
 
In addition, computer processors are more affordable, so that most modern applied statisticians are involved in computing. To analyse data, statisticians and programmers have developed statistical software and
programming languages.
 
A good example is the S Programming Language, which was designed especially for programming with data. There are now a large number of software libraries written in S which can be used to solve almost any practical statistical problem.
 
To start R in Windows, double click the R icon. To start R in Unix or Linux, type ‘R’ at the command prompt. To get out of R, just type: q().
R has an inbuilt help facility. To get more information on any specific named
function, for example “boxplot”, the command is:
?boxplot
 
 
R has data handling and storage facilities, a suite of operators for calculations on arrays in particular matrices. A large coherent integrated collection of intermediate tools for data analysis
A large selection of demonstration datasets used in the illustration of many statistical methods.
Graphical facilities for data analysis and display either directly.at the computes or on hardcopy.
 
 
 
 
 




Graphics

# Goal: To make a panel of pictures.

par(mfrow=c(3,2))                       # 3 rows, 2 columns.

# Now the next 6 pictures will be placed on these 6 regions. 

# 1 --

plot(density(runif(100)), lwd=2)
text(x=0, y=0.2, "100 uniforms")        
abline(h=0, v=0)
	          # All these statements effect the 1st plot.

x=seq(0.01,1,0.01)
par(col="blue")                        # default colour to blue.

# 2 --
plot(x, sin(x), type="l")
lines(x, cos(x), type="l", col="red")

# 3 --
plot(x, exp(x), type="l", col="green")
lines(x, log(x), type="l", col="orange")

# 4 --
plot(x, tan(x), type="l", lwd=3, col="yellow")

# 5 --
plot(x, exp(-x), lwd=2)
lines(x, exp(x), col="green", lwd=3)

# 6 --
plot(x, sin(x*x), type="l")
lines(x, sin(1/x), col="pink")

# code is committed
 


x=c(15, 34, 7, 12, 18, 9, 1, 42, 56, 28, 13, 24, 35)
 
sort(x)           # sort x into ascending order

length(x)         # How many items in x
median(x)         # median of data set x
sort(x)[7]        # 7th item when x is in ascending order
quantile(x,0.75)  # Compute the third quartile
quantile(x,0.25)  # Compute the first quartile
IQR(x)            
fivenum(x)

# code is committed

 




 

 


































