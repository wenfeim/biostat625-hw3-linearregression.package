test_that("Residuals of linear regression works", {
  Y <- c(4,6,9,13)
  X1 <- c(2,3,5,6)
  X2 <- c(1,4,3,8)
  model_test_2 <- lm(Y ~ X1 + X2)
  expected_residuals <- c(0.3626374, -0.4285714, -0.1648352, 0.2307692)
  names(expected_residuals) <- names(residuals(model_test_2))
  expect_equal(residuals(model_test_2), expected_residuals, tolerance = 1e-5)
})
