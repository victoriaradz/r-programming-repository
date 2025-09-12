#Vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll <- c(4, 62, 51,21, 2, 14, 15)
CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

#Data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)

#Inspect data frame
str(df_polls)

head(df_polls)

#Summary statistics

#Mean
mean(df_polls$ABC_poll)
mean(df_polls$CBS_poll)

#Median
median(df_polls$CBS_poll)
median(df_polls$ABC_poll)

#Range
range(df_polls[,c("ABC_poll", "CBS_poll")])

#Add a column for difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll

#Bar chart
library(ggplot2)

#Plot for ABC_poll
ggplot(df_polls, aes(x= ABC_poll)) + geom_bar(fill= "white", color = "black", width = 1)

#Plot for CBS_poll
ggplot(df_polls, aes(x= CBS_poll)) + geom_bar(fill= "white", color = "black", width = 1.50)

#Plot for Diff
ggplot(df_polls, aes(x= Diff)) + geom_bar(fill= "white", color = "black", width = 1)

