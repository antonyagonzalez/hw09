context("Extract interaction btw predictors 1 and 2")

test_that("Correct upper confidence interval given", {
  iris_model <- lm(formula = Sepal.Length ~ Petal.Length * Petal.Width * Sepal.Width, data = iris)
  iris_ci <- confint(iris_model, level = 0.95, method = "boot")
  x <- iris_ci[5, 2]
  iris_interact <- interact12(iris_model)
  y <- iris_interact[6]

  expect_equivalent(x, y)
})
