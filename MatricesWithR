###########################################################
# Creating Matrices

# Numeric Vector with 9 elements
A <- c(1,4,5,6,4,5,5,7,9) 
 
#3 by 3 matrix, assigned by column.
B <- matrix(A,nrow=3) 

C <- matrix( c(1,6,7,0.6,0.5,0.3,1,2,1), ncol=3 , byrow =TRUE)

###########################################################

# creating an identity matrix

D <- diag(3)   # 3 by 3 Identity Matrix



###########################################################

A <- matrix(c(1,5,4,2),nrow=2)
B <- matrix(c(4,3,2,2),nrow=2)
C <- matrix(c(1,5,4,3,2,2),nrow=2)

A * B    # Element-wise multiplication 
A %*% C  # Matrix multiplication  
A %o% B  # Outer product. AB'  
######################################

crossprod(A,B)
crossprod(A) 

# A'B and A'A respectively.  
######################################

t(C)  # Transpose 
diag(c(1,4,1,5))  # Creates diagonal matrix with elements of x in the principal diagonal  
diag(A)           # Returns a vector containing the elements of the principal diagonal  
diag(2)           # If k is a scalar, this creates a k x k identity matrix. Go figure.  
######################################################
b <- c(4,5)
solve(A, b)  # Returns vector x in the equation b = Ax (i.e., A-1b)  
solve(A)     # Inverse of A where A is a square matrix.  

######################################################
#
# Linear Algebra
#
ginv(A) # Moore-Penrose Generalized Inverse of A. 
#ginv() requires loading the MASS package.  

######################################################
# Eigen Analysis

y<-eigen(A) 
y$val #There are the eigenvalues of A
y$vec #These are the eigenvectors of A  

######################################################
#Decomposition

y<-svd(A) #Single value decomposition of A.
y$d # vector containing the singular values of A
y$u # matrix with columns contain the left singular vectors of A 
y$v # matrix with columns contain the right singular vectors of A  

R <- chol(A) #Choleski factorization of A. Returns the upper triangular factor, such that R'R = A. 
y <- qr(A)  #QR decomposition of A. 
y$qr #has an upper triangle that contains the decomposition and a lower triangle that contains information on the Q decomposition.
y$rank #is the rank of A. 
y$qraux #a vector which contains additional information on Q. 
y$pivot #contains information on the pivoting strategy used.  

#cbind(A,B,...) Combine matrices(vectors) horizontally. Returns a matrix.  
#rbind(A,B,...) Combine matrices(vectors) vertically. Returns a matrix.  

######################################################
rowMeans(A) # Returns vector of row means. 
rowSums(A)  # Returns vector of row sums.  
colMeans(A) # Returns vector of column means.  
colSums(A)  # Returns vector of coumn means.  
