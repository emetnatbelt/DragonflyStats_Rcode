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
rowMeans(A) # Returns vector of row means. 
rowSums(A)  # Returns vector of row sums.  
colMeans(A) # Returns vector of column means.  
colSums(A)  # Returns vector of coumn means.  
