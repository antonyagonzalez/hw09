interact12 <- function(lm) {
  modelsum <- summary(lm)
  modelci <- confint(lm, level = 0.95, method = "boot")
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
