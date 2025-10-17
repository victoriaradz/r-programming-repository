
library(plyr)


housePrices <- read.csv("HousePrices.csv")
housePrices$rownames <- NULL

price_mean <- ddply(
  housePrices,
  "lotsize",
  summarise,
  PriceAverage = mean(price, na.rm = TRUE)
)

write.table(
  price_mean,
  file = "price_mean.txt",
  sep = "\t",
  row.names = FALSE
)

write.csv(
  price_mean,
  file = "price_mean.csv",
  row.names = FALSE
)
