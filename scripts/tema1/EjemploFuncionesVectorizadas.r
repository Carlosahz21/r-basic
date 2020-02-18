#Ejemplo de la funcion apply
set.seed(100)
#generacion de matriz con numeros que siguen la distribucion normal
#con media = 0 y varianza = 1
X <- matrix(rnorm(30),nrow = 5, ncol = 6)
print(X)
#suma de todas las filas de la matriz
apply(X, 1, sum)
#media de todas las columnas de la matriz
apply(X, 2, mean)

#Ejemplo de la funcion Lapply
A <- matrix(1:9,3,3)
B <- matrix(4:15,4,3)
C <- matrix(8:10,3,2)
mi_lista <- list(A,B,C)
#Extraccion de la segunda columna de cada matriz en la lista
lapply(mi_lista, "[", , 2)
#Extraccion de la primera fila de cada matriz en la lista
lapply(mi_lista, "[", 1, )

#Ejemplo de la funcion Sapply
lapply(mi_lista, "[", 2, 1)
sapply(mi_lista, "[", 2, 1)

#Ejemplo de la funcion Mapply
Q <- matrix(c(rep(1,4),rep(2,4),rep(3,4),rep(4,4)),4,4)
mapply(rep, 1:4, 4)