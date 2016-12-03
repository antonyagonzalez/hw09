context("Extract three-way interaction")

test_that("Function does not work using a vector", {
  vector <- c(1:12)

  expect_that((interact3(vector)), throws_error("operator is invalid for atomic vectors"))
})
