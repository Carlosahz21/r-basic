# -*- coding: utf-8 -*-
"""
Created on Fri Mar 20 11:15:38 2020

@author: Asus
"""

#Ejercicio 1
import numpy as np
def solucion(a,b,c):
    x1 = (-b + np.sqrt((b**2)-(4*a*c)))/(2*a)
    x2 = (-b - np.sqrt((b**2)-(4*a*c)))/(2*a)
    return(x1,x2)
       
#Ejercicio 2
texto = str(input("Ingrese una frase"))
texto = texto.replace(" ", "").lower()
inverso = texto[::-1]

def esPalindromo():
    if texto == inverso:
        return "La frase es un Palindromo"
    else:
        return "La frase no es un Palindromo"

#Ejercicio 3
cuadrado = {}
for i in range(1,11):
    cuadrado[i]=i**2
    
#Ejercicio 3
alfabeto = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
simbolos_morse = ["· —", "— · · ·", "— · — ·", "— · ·","·","· · — ·","— — ·","· · · ·","· ·",
                "· — — —","— · —","· — · ·","— —","— ·","— — · — —","— — —","· — — ·",
                "— — · —","· — ·","· · ·","—","· · —","· · · —","· — —","— · · —","— · — —",
                "— — · ·"]
codigo_morse = {}
for i in alfabeto:
    codigo_morse[i] = simbolos_morse[i]
    
#Ejercicio 4
alfabeto = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
simbolos_morse = ["· —", "— · · ·", "— · — ·", "— · ·","·","· · — ·","— — ·","· · · ·","· ·",
                "· — — —","— · —","· — · ·","— —","— ·","— — · — —","— — —","· — — ·",
                "— — · —","· — ·","· · ·","—","· · —","· · · —","· — —","— · · —","— · — —",
                "— — · ·"]
codigo_morse = {}
for indice, letra in enumerate(alfabeto):
    codigo_morse[letra] = simbolos_morse[indice]

print(str(codigo_morse)+'\n')
print("Por ejemplo el código Morse de la letra P es: " + codigo_morse["P"])
#A continuación crea un programa que lea una frase del teclado y te la convierta a Morse utilizando el diccionario anterior.
texto = str(input("Ingrese una frase: "))
texto = texto.upper().replace(" ", "")
morse = []
for i in texto:
    morse.append(codigo_morse[i])

print(morse)

#Ejercicio 5
a = {"a":1,"b":2,"c":3,"d":4,"e":5,"f":6,"g":7}
b = {"a":2,"b":5,"e":4,"f":21}

def clavesComunes(a,b): ## a y b son diccionarios
    claves_a = a.keys()
    claves_b = b.keys()
    comunes = [] #lista que almacena las claves que son comunes en los dos diccionarios
    for i in claves_a:
        if i in claves_b:
            comunes.append(i)
    return comunes

clavesComunes(a,b)

#Ejercicio 6
n = int(input("Ingrese un número: "))

def esPrimo(n):
    b = False
    for i in range (2,n):
        if n%i == 0:
            b = False
            break
        else: 
            b = True
    return b

if esPrimo(n) == True:
    print("Es Primo")
elif esPrimo(n) == False: 
    print("No es Primo")

#Ejercicio 7
texto = str(input("Ingrese una frase: "))
lista_texto = texto.split()
filtro = [] #lista que almacena las primeras letras de cada palabra en mayuscula
for i in lista_texto:
    filtro.append(i[0].upper())
print(filtro)

#Ejercicio 8
print("Ingrese dos numeros: ")
n1 = int(input())
n2 = int(input())

#funcion para calcular los divisores de un numero
def divisores(n):
    div = []
    for i in range(1,n+1):
        if n%i==0:
            div.append(n/i)
    return div

d1 = divisores(n1) #divisores de n1 
d2 = divisores(n2) #divisores de n2
dComunes = list(set(d1) & set(d2)) #Divisores comunes de n1 y n2
mcd = np.max(dComunes) #calculo del maximo de los divisores comunes
print("El mcd de "+str(n1)+" y "+str(n2)+" es: "+str(mcd))

#Ejercicio 9
alfabeto = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZABC".lower()
alfabeto_cod = "DEFGHIJKLMNÑOPQRSTUVWXYZABC".lower()

texto = str(input("Ingrese una frase: ")).lower()
texto = texto.split()
texto_cesar = [] #lista para guardar las palabras codificadas

def codCesar(texto): 
    for i in texto:
        indice = alfabeto.index(i) #devuelve el indice del elemento i 
        texto = texto.replace(i,alfabeto_cod[indice])
    return texto

for i, palabra in enumerate(texto):
    texto_cesar.append(codCesar(palabra))

texto_cesar = " ".join(texto_cesar) #concatena las palabras de la lista texto_cesar
print("La frase codificada es: " + texto_cesar)

#Ejercicio 10
nombres = ['Ana', 'Miguel', 'Carlos', 'Bianca', 'Eduardo', 'Gabriela', 'Margarita',"Raul"]

#primera forma
nombres.sort()
print("Orden Alfabetico: " + str(nombres))
#segunda forma
nombres.sort(reverse=True)
print("Orden Alfabetico Inverso: " + str(nombres))
#tercera forma
nombres.sort(key=len)  
print("Orden por el tamaño de cada palabra: " + str(nombres))