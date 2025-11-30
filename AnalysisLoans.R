approval_model <- function(data){
  model <- glm(defaults_on_file ~ age + years_employed + annual_income +
                 credit_score + credit_history_years + savings_assets + current_debt,
               data = data, family = binomial)

  return(model)
}

sratio <- function(savings_assets, annual_income){
  ratio <- savings_assets/annual_income

  return(ratio)
}

factorCorrelation <- function(data, target = "defaults_on_file"){
  data[[target]] <- as.numeric(data[[target]])

  numeric_vars <- sapply(data, is.numeric)
  predictors <- names(data)[numeric_vars]
  predictors <- setdiff(predictors, target)

  cor_values <- sapply(predictors, function(var){
    cor(data[[var]], data[[target]], use = "complete.obs")
  })

  cor_df <- data.frame(
    Feature = predictors,
    Correlation = cor_values,
    row.names = NULL
  )

  return(cor_df[order(abs(cor_df$Correlation), decreasing = TRUE), ])
}

riskDistribution <- function(model, data){
  library(ggplot2)

  probs <- predict(model, data, type = "response")

  df <- data.frame(Risk = probs)

  ggplot(df, aes(x = Risk)) + geom_histogram(binwidth = 0.05, fill = "steelblue", color = "white", alpha = 0.7) +
    geom_density(color = "red", linewidth = 1) +
    labs(title = "Risk Distribution of Loan Applicants",
         x = "Predicted Risk (Probability of Default)",
         y = "Count") + theme_minimal()
}

