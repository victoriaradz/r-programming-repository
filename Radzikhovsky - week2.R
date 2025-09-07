
#Before fixing
assignment2 <- c(16,18,14,22,27,17,19,17,17,22,20,22)

myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
  
}

#The code failed because of the variable names inside of sum() and length().

#After fixing
assignment2 <- c(16,18,14,22,27,17,19,17,17,22,20,22)

myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
  
}

print(myMean(assignment2))

#To fix it, I changed the variable names to 'assignment2' and printed the mean.