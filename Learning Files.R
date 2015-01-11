add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

aboveX <- function(z, l) {
  use1 <- z > l
  z[use1]
}

columnmean <-function(y) {
  nc <- ncol(y)
  means <- numeric(nc)
  
  for(i in 1:nc) {
    means[i] <- mean(y[,i])
  }
  means
}

columnmeanNA <-function(y, RemoveNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  
  for(i in 1:nc) {
    means[i] <- mean(y[,i], na.rm = RemoveNA)
  }
  means
}

f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}