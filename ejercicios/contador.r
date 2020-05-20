count <- function(x) {
  acum <- 0
  for(i in seq(1,length(x))) {
    acum <- acum + 1
  }
  return(acum)
}