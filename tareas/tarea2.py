# -*- coding: utf-8 -*-
"""
Editor de Spyder

Este es un archivo temporal.
"""
#Primer ejercicio
x = float(input("Ingrese un numero"+'\n'))
if x > 0:
    print(str(x), "es positivo")
else:
   print(str(x), "no es positivo")

#segundo ejercicio
x = float(input("Ingrese un numero"+'\n'))
if x >= -5 and x <= 5:
    print(str(x), "esta entre -5 y 5")
else:
   print(str(x), "esta fuera del rango")
   
#tercer ejercicio
x = float(input("Ingrese la coordenada x"+'\n'))
y = float(input("Ingrese la coordenada y"+'\n'))
if x > 0 and y > 0:
  print("("+str(x)+","+str(y)+") esta en el 1er Cuadrante")
elif x < 0 and y > 0:
  print("("+str(x)+","+str(y)+") esta en el 2do Cuadrante")
elif x < 0 and y < 0:
  print("("+str(x)+","+str(y)+") esta en el 3er Cuadrante")
elif x > 0 and y > 0:
  print("("+str(x)+","+str(y)+") esta en el 4to Cuadrante")
else:
  print("("+str(x)+","+str(y)+") esta en el centro del plano cartesiano")
  
#cuarto ejercicio
a = int(input("Ingrese a"+'\n'))
b = int(input("Ingrese b"+'\n'))
print("cociente entero = "+str(a//b))
print("resto = "+str(a%b))

#quinto ejercicio
import numpy as np
n = int(input("Ingrese un numero"+'\n'))
if (n-int(n)) == 0 and (np.sqrt(n)-int(np.sqrt(n))) == 0:
    print(str(n), "es un cuadrado perfecto")
else:
   print(str(n), "no es un cuadrado perfecto")
   
#sexto ejercicio
n = int(input("Ingrese un numero"+'\n'))
if n%4 == 0 and n%100 != 0 or n%400 == 0:
	print("El año es bisiesto")
else:
	print("El año no es bisiesto")
    
#septimo ejercicio
numero = int(input("Ingrese un numero"+'\n'))
letra = input("Ingrese una letra"+'\n')
A = [1,3,5,7]
B = [2,4,6,8]
C = ['a','c','e','g']
D = ['b','d','f','h']
if numero in A and letra.lower() in C:
    print("casilla de color negro")
elif numero in A and letra.lower() in D:
   print("casilla de color blanco")
elif numero in B and letra.lower() in C:
   print("casilla de color blanco")
elif numero in B and letra.lower() in D:
   print("casilla de color negro")
else:
    print("fuera de rango")