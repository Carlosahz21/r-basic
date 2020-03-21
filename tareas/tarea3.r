#1
harry <- -10:27
harry[7]

#2
n <- 0:200
max(100*(2^n)-7*(3^n))

#3
n <- 0:40
x <- 3*(5^n)-1
x[x>3.5]

#4
complejo <- function(z) {
  l <- list(real=Re(z), imaginaria=Im(z), modulo=Mod(z), argumento=Arg(z), conjugado=Conj(z))
  return(l)
}
#Por Ejemplo
z <- 2+3i
complejo(z)

#5
#Ax^2+Bx+C=0
solEc2 <- function(a,b,c){
  m <- sqrt(b^2-4*a*c)
  d <- 2*a
  solucion <- list(solucion1 = (-b+m)/d, solucion2=(-b-m)/d)
  return(solucion)
}
#Por Ejemplo
#2x^2+4x+1=0
solEc2(2,4,1)

#6
vec = c(0,9,98,2,6,7,5,19,88,20,16,0)
vec[vec==9 | vec>=16 & vec<=20]
sort(vec)[7:10]