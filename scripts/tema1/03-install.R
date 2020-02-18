install.packages("tidyverse", dep = TRUE)

library(tidyverse)

install.packages("magic", dep = TRUE)

library(magic)

magic(6)

installed.packages()


operaciones <- function(x,y,num_op) {
  
  if (num_op == 1) {
    x+y #suma
  } else if (num_op == 2) {
    x-y #resta
  } else if (num_op == 3) {
    x*y #multiplicacion
  } else if (num_op == 4) {
    if (y != 0) {
      x/y #division
    } else {
      0 # si y = 0
    }
  } else {
    0 # En cualquier otro caso
  }
  
}