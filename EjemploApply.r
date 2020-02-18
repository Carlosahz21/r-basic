#Ejemplo de la funcion apply
set.seed(100)
#generacion de matriz con numeros que siguen la distribucion normal
#con media = 0 y varianza = 1
X <- matrix(rnorm(30),nrow = 5, ncol = 6)
print(X)
apply(X,1,sum) #suma de todas las filas de la matriz