<!-- badges: start -->
  [![Codecov test coverage](https://codecov.io/gh/wenfeim/biostat625-hw3-linearregression.package/graph/badge.svg)](https://app.codecov.io/gh/wenfeim/biostat625-hw3-linearregression.package)
  <!-- badges: end -->
# Linear regression packpage for BIOSTAT625 homework 3
The linear regression package includes three functions: coefficients of multiple linear regression; Residuals of multiple linear regression and fitted_values of simple linear regression
# How to use
## Installation
```r
devtools::install_github("https://github.com/wenfeim/biostat625-hw3-linearregression.package/tree/master")
```
## coefficients(X,Y)
### The coefficients function could calculate coefficients of multiple linear regression
#### Example
Y <- c(5,7,10,5)

X1 <- c(1,2,3,4)

X2 <- c(2,3,4,6)

X <- cbind(1,X1,X2)

coefficients(X,Y)

## Residuals(X,Y)
### The Residuals function could calculate residuals of multiple linear regression
#### Example
Y <- c(4,6,9,13)

X1 <- c(2,3,5,6)

X2 <- c(1,4,3,8)

X <- cbind(1,X1,X2)

Residuals(X,Y)

