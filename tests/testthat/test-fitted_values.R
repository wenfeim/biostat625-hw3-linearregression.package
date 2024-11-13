test_that("fitted values of linear regression works", {
  X <- c(1,2,3,4)
  Y <- c(2,3,4,5)
  model_test_1 <- lm(Y ~ X)
  expected_fitted_values <- c(2,3,4,5)
  names(expected_fitted_values) <- names(model_test_1$fitted.values)
  expect_equal(model_test_1$fitted.values, expected_fitted_values, tolerance = 1e-5)
})
