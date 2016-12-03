context("Meta-analyze standardized regression coefficients")

test_that("Function does not work with more than 4 values", {

  expect_that((metabeta(.60, .15, .35, .25, .80)), throws_error())
})
