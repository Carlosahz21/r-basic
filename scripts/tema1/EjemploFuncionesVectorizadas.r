#Ejemplo de la funcion apply
set.seed(100)
#generacion de matriz con numeros que siguen la distribucion normal
#con media = 0 y varianza = 1
X <- matrix(rnorm(30),nrow = 5, ncol = 6)
print(X)
apply(X,1,sum) #suma de todas las filas de la matriz
#Ejemplo de la funcion Lapply
A <- matrix(1:9,3,3)
B <- matrix(4:15,4,3)
C <- matrix(8:10,3,2)
mi_lista <- list(A,B,C)
#ejemplo de la extraccion de todos los elementos de la segunda columna
# de las matrices en la lista
lapply(mi_lista, "[", , 2)
