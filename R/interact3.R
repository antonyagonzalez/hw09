#' Extract regression model data for 3 way interaction
#'
#' Pull the regression coefficient, standard error, t-value and p-value
#' for the three way interaction specified in your linear model. Linear model must have 3+ predictors to work.
#'
#' @param lm linear model
#'
#' @return beta, se, t-value, p-value, ci95_low, ci95_high
#' @export
#' @examples
#' example <- lm(formula = Sepal.Length ~ Petal.Length * Petal.Width * Sepal.Width, data = iris)
#' interact3(example)
interact3 <- function(lm) {
  modelsum <- summary(lm)
  modelci <- confint(lm, level = 0.95, method = "boot")
  end <- nrow(modelsum$coefficients)
  out <- c(modelsum$coefficients[(end)],
           modelsum$coefficients[(end),2],
           modelsum$coefficients[(end),3],
           modelsum$coefficients[(end),4],
           modelci[(end)],
           modelci[(end),2])
  names(out) <- c("beta", "se", "t-value", "p-value", "ci95_low", "ci95_high")
  return(out)
}
