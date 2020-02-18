install.packages("tidyverse", dep = TRUE)

library(tidyverse)

install.packages("magic", dep = TRUE)

library(magic)

magic(6)

installed.packages()


operaciones <- function(x,y,nombre_op) {
  nombre_op <- tolower(nombre_op)
  if (num_op == "suma") {
    return(x+y) #suma
  } else if (num_op == "resta") {
    return(x-y) #resta
  } else if (num_op == "multiplicacion") {
    return(x*y) #multiplicacion
  } else if (num_op == "division") {
    if (y != 0) { 
      return(x/y) #division
    } else {
      return(0) # si y = 0
      print("division por cero no definida")
    }
  } else {
    return(0) # En cualquier otro caso
    print("operacion fallida")
  }
  
}