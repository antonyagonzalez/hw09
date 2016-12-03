context("Extract interaction btw predictors 1 and 2")

test_that("Function does not work using a vector", {
  vector <- c(1:12)

  expect_that((interact12(vector)), throws_error("operator is invalid for atomic vectors"))
})
