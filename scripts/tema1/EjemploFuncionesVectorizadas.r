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
#asa_pasajeros <- asa_datos[,c("Pasajeros.nacionales", "Pasajeros.internacionales")] 
#tapply(asa_datos$Pasajeros.nacionales, asa_datos$Estado, sum)
#Ahora obtén el promedio o media de pasajeros nacionales que viajaron por mes en cada aeropuerto.
#tapply(asa_datos$Pasajeros.nacionales, asa_datos$Codigo.IATA, sum)

#Ejemplo de la funcion Sapply
lapply(mi_lista, "[", 2, 1)
sapply(mi_lista, "[", 2, 1)

#Ejemplo de la funcion Mapply
Q <- matrix(c(rep(1,4),rep(2,4),rep(3,4),rep(4,4)),4,4)
mapply(rep, 1:4, 4)

#Ejemplo plot
plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 21, bg = iris$Species)
legend(x = 4.5, y = 7, legend = levels(iris$Species), col = c(1:3), pch = "*")

#Expresiones Regulares
grep("curso", c("hola,", "ejemplo", "curso"))
nchar("Curso de Estadistica")
sprintf("El cuadrado de %d es %d", i, i^2)
substring("Curso de Estadistica", 1, 5)
strsplit("Curso-de-Estadistica", "-")
gregexpr("ab", "abcsjdijsiabijsuhayguahsabaijaisabab")
regexpr("[aeiou]", "adjijelplpidgdillossawqu")
gregexpr("[aeiou]", "adjijelplpidgdillossawqu")

#Ejemplos ggplot2
#Descripcion diamonds 
#carat representa el peso del diamante, cut representa la calidad del corte (Fair, Good, Very Good,
#Premium, Ideal), color representa el color del diamante, desde J (el peor) a D (el mejor), clarity es
#una medida de qué tan claro es el diamante (I1 (el peor), SI1, SI2, VS1, VS2, VVS1, VVS2, IF (el mejor)).
#table indica la anchura de la parte superior del diamante con relación al punto más ancho, price
#representa el precio del diamante en dólares, x la longitud en milímetros, y la anchura en milímetros,
#z la profundidad en milímetros y depth el porcentaje de profundidad total, es decir, z / mean(x, y) = 2 * z / (x + y).
#Debes de saber que algunas variables se mapean mejor a ciertos atributos estéticos; por ejemplo, color
#y shape se mapean mejor a variables categóricas, mientras que size se mapea mejor a variables de tipo
#continuo

#el atributo geom de qplot() especifica el tipo de objeto que utilizará para graficar. El
#valor por defecto es "point" (punto); esto sólo si ’x’ y ‘y’ se encuentran especificados. Si sólo x se
#encuentra especificado el valor es "histogram" (histograma)
#Un posible valor para geom es "smooth", el cual ajusta una curva a los puntos que estas especificando,
#además de que te dibuja el error estándar de esa curva.

set.seed(100)
diamonds_muestra <- diamonds[sample(nrow(diamonds), 100),]
qplot(carat, price, data = diamonds)
qplot(carat, price, data = diamonds_muestra)
qplot(carat, price, data = diamonds_muestra, color = color, shape = cut)
qplot(carat, price, data = diamonds, color = color, alpha = I(1/100), size = table)
qplot(carat, price, data = diamonds_muestra, color = color, size = table, facets = color ~ .)
qplot(carat, price, data = diamonds_muestra, color = color, size = table, geom = c("smooth", "point"))
qplot(carat, price, data = diamonds_muestra, geom = c("smooth", "point"))
qplot(color, data = diamonds)
qplot(log(carat), log(price), data=diamonds)
qplot(color, price/carat,data=diamonds, geom = "jitter", color = color)
qplot(color, price/carat, data=diamonds, geom = "boxplot")

#Simulacion
#Usualmente cada distribución tendrá 4 funciones de la forma prefijo + apodo_distribucion. Cada prefijo
#indica: r - la función para generar números aleatorios, p - la función de distribución, d - la función
# de densidad, q - la función que te da cuantiles.
#Para más información     apodo_distribucion       Distribución
#?Normal                  norm                     la distribución normal
#?Poisson                 pois                     la distribución poisson
#?Binomial                binom                    la distribución binomial
#?Geometric               geom                     la distribución geométrica
#?Chisquare               chisq                    la distribución ji-cuadrada o chi-cuadrada


