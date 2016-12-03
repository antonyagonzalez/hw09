context("Meta-analyze standardized regression coefficients")

test_that("Beta is calculated correctly", {
  inv1 <- (1/((.15)^2))
  inv2 <- (1/((.25)^2))
  sum_inv <- (inv1 + inv2)
  weight1 <- (.60 * inv1)
  weight2 <- (.35 * inv2)
  sum_weight <- (weight1 + weight2)
  x <- (sum_weight/sum_inv)
  betavalue <- metabeta(.60, .15, .35, .25)
  y <- betavalue[[1]]

  expect_identical(x, y)
})
