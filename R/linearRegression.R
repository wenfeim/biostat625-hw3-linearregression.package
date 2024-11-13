#' calculate coefficients of multiple linear regression
#'
#' @param X A matrix representing the design matrix
#' @param Y A numeric vector of values as response variable
#' @return A matrix of regression coefficients(includes estimates,standard error, t statistic and p value)
#' @examples
#' Y <- c(5,7,10,5)
#' X1 <- c(1,2,3,4)
#' X2 <- c(2,3,4,6)
#' X <- cbind(1,X1,X2)
#' coefficients(X,Y)
#' @export
coefficients <- function(X,Y) {
  n = nrow(X)
  p = ncol(X)
  betahat = solve(t(X)%*%X)%*%t(X)%*%Y
  Yhat = X%*%betahat
  epsilonhat = Y - Yhat
  sigma_squared = t(epsilonhat)%*%epsilonhat/(n-p)
  var_betahat = diag(solve(t(X)%*%X)) * c(sigma_squared)
  se_betahat = sqrt(var_betahat)
  t_statistic = c(betahat/se_betahat)
  p_value = c(2*(1-pt(q=abs(t_statistic), df = n-p)))
  coef = cbind(Estimate=c(betahat),
               std_error=se_betahat,
               t_statistic=t_statistic,
               p_value=p_value)
  return(coef)
}

#' calculate the residuals of linear regression
#'
#' @param X A matrix representing the design matrix
#' @param Y A numeric vector of values as response variable
#' @return A vector representing residuals of linear regression
#' @examples
#' Y <- c(4,6,9,13)
#' X1 <- c(2,3,5,6)
#' X2 <- c(1,4,3,8)
#' X <- cbind(1,X1,X2)
#' Residuals(X,Y)
#' @export
Residuals <- function(X,Y){
  n = nrow(X)
  p = ncol(X)
  betahat = solve(t(X)%*%X)%*%t(X)%*%Y
  Yhat = X%*%betahat
  epsilonhat = Y - Yhat
  return(epsilonhat)
}

#' calculate the fitted values of simple linear regression
#'
#' @param X A numeric vector of values as predicted variable
#' @param Y A numeric vector of values as response variable
#' @return fitted values of simple linear regression
#' @examples
#' X <- c(1,2,3,4)
#' Y <- c(2,3,4,5)
#' fitted_values(X,Y)
#' @export
fitted_values <- function(X,Y){
  Xbar = mean(X)
  Ybar = mean(Y)
  n = length(Y)
  SSxy = sum((Y-Ybar)*(X-Xbar))
  SSx = sum((X-Xbar)^2)
  beta1hat = SSxy/SSx
  beta0hat = Ybar-beta1hat*Xbar
  fitted_values = beta0hat + beta1hat*X
  return(fitted_values)
}
