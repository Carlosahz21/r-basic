library(matlib)

adjunta <- function(X) {
  for (i in seq(1,nrow(X))) {
    for (j in seq(1,nrow(X))) {
      C[i,j] <- cofactor(X,i,j)
    }
  }
  return(t(C))
}

inversa <- function(Y) {
  Z <- (1/det(Y))*adjunta(Y)
  return(Z)
}