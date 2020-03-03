#segundos a minutos
minutos <- 250000000/60 
#minutos a horas
horas <- minutos%/%60
#resto en minutos
resto_minutos <-minutos%%60
#horas a dias
dias <- horas%/%24
#resto en horas 
resto_horas <- horas%%24
#dias a años
años <- dias%/%365
#resto de dias
resto_dias <- dias%%365 - 2
resto_segundos <- (resto_minutos - floor(resto_minutos))*60
sprintf("resultado año %d, %d dias %d horas %d minutos %1.0f segundos", 2018+años, resto_dias, resto_horas, floor(resto_minutos), as.double(resto_segundos)) 

x <- function(a, b, c) {(c-b)/a}
#5x+3=0
x(5,3,0)
#7x+4=18
x(7,4,18)
#x+1=1
x(1,1,1)

y <- exp(3)-pi
round(y, 3)
Mod((2+3i)^2/(5+8i))