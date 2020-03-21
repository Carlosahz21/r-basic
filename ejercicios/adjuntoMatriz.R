library(matlib)

adjunta <- function(X) {
  C <- matrix(rep(0,length(X)),nrow(X),ncol(X))
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