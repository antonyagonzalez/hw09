#' Extract 3-way interaction regression model data
#'(interaction between predictor 1 & 2)
#'
#' Pull the regression coefficient, standard error, t-value, p-value and confidence
#' interval for the interaction between the first and second predictors
#' specified in your linear model. Linear model must have 3+ predictors to work.
#'
#' @param lm linear model
#'
#' @return beta, se, t-value, p-value, ci95_low, ci95_high
#' @export
#' @examples
#' example <- lm(formula = Sepal.Length ~ Petal.Length * Petal.Width * Sepal.Width, data = iris)
#' interact12(example)
interact12 <- function(lm) {
  modelsum <- summary(lm)
  modelci <- stats::confint(lm, level = 0.95, method = "boot")
  end <- nrow(modelsum$coefficients)
  out <- c(modelsum$coefficients[(end - 3)],
           modelsum$coefficients[(end - 3),2],
           modelsum$coefficients[(end - 3),3],
           modelsum$coefficients[(end - 3),4],
           modelci[(end - 3)],
           modelci[(end - 3),2])
  names(out) <- c("beta", "se", "t-value", "p-value", "ci95_low", "ci95_high")
  return(out)
}
