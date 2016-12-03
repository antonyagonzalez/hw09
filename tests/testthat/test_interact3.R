context("Extract three-way interaction")

test_that("Correct beta is being pulled", {
  iris_model <- lm(formula = Sepal.Length ~ Petal.Length * Petal.Width * Sepal.Width, data = iris)
  iris_sum <- summary(iris_model)
  x <- iris_sum$coefficients[8]
  iris_interact <- interact3(iris_model)
  y <- iris_interact[[1]]

  expect_identical(x, y)
})
