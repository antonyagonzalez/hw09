context("Meta-analyze standardized regression coefficients")

test_that("Function does not work with non-numeric values", {

  expect_that((metabeta("a", "eggplant", TRUE, FALSE)), throws_error())
})
