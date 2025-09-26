#Create the matrices
A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

#Inspect dimensions
dim(A)
dim(B)

#Compute inverse and determinant 

#For A
invA <- solve(A)
detA <- det(A)
detA

#For B
invB <- tryCatch(solve(B), error=function(e)e)
detB <- tryCatch(det(B), error=function(e)e)

