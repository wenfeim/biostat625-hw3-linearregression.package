test_that("linear regression coefficients works", {
  Y <- c(5,7,10,5)
  X1 <- c(1,2,3,4)
  X2 <- c(2,3,4,6)
  model_test <- lm(Y ~ X1 + X2)
  expected_intercept <- 9.666667
  expected_X1_coef <- 9.833333
  expected_X2_coef <- -7.333333
  names(expected_intercept) <- names(coef(model_test)[1])
  names(expected_X1_coef) <- names(coef(model_test)[2])
  names(expected_X2_coef) <- names(coef(model_test)[3])
  expect_equal(coef(model_test)[1], expected_intercept, tolerance = 1e-5)
  expect_equal(coef(model_test)[2], expected_X1_coef, tolerance = 1e-5)
  expect_equal(coef(model_test)[3], expected_X2_coef, tolerance = 1e-5)
})
