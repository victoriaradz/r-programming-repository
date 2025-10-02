#Define matrices
A <- matrix(c(2,0,1,3), ncol = 2)
B <- matrix(c(5,2,4,-1), ncol=2)

A + B
A - B

#Diagonal Matrix
D <- diag(c(4,1,2,3))

#5x5 Matrix
P <- matrix(0,5,5)
diag(P) <- 3
P[1,-1] <- 1
P[-1, 1] <- 2
