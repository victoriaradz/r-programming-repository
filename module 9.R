library(ggplot2)
install.packages("lattice")
library(lattice)
install.packages("AER")
library(AER)


data("CASchools", package = "AER")

#2 Base R's
plot(CASchools$income, CASchools$read,
     main = "Income vs. Reading Score",
     xlab = "Income",
     ylab = "Reading Score")



#Lattice 
xyplot(read~ income, data = CASchools,
       main = "Lattice: Reading vs. Income",
       xlab = "Income",
       ylab = "Reading Score")


#ggplot2
ggplot(CASchools, aes(x= income, y = read)) + geom_point() + ggtitle("ggplot2: Income vs. Reading Score")

