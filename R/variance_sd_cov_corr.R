variance <- function(data)
{
  mean_value <- mean(data)
  n <- length(data)
  var <- sum((data-mean_value)^2)/(n-1)
  return(var)
}
StandardDeviation <- function(data)
{
  variance <- variance(data)
  sd1 <- sqrt(variance)
  return(sd1)
}
covariance <- function(x,y)
{
  n <- length(x)
  mean_x <- mean(x)
  mean_y <- mean(y)
  covariance_value <- sum((x-mean_x)*(y-mean_y))/(n-1)
  return(covariance_value)
  
}
correlation <- function(x,y)
{
  covariance <- covariance(x,y)
  sd_x <- sqrt(variance(x))
  sd_y <- sqrt(variance(y))
  correlation_value <- covariance/(sd_x * sd_y)
  return(correlation_value)
  
}

data <- c(1,2,3,4,5)
x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)

cat("The variance is",variance(data),"\n")
cat("The standard deviation is",StandardDeviation(data),"\n")
cat("The covariance is",covariance(x,y),"\n")
cat("The corelation is",correlation(x,y),"\n")

