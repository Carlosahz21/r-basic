# -*- coding: utf-8 -*-
"""
Created on Tue Apr  7 03:46:45 2020

@author: Asus
"""

import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import norm

np.random.seed(587)

mu = 100 
sigma = 25

plt.figure(figsize=(8, 6), dpi=200)
#Vector Aleatorio con distribucion normal
x = mu + sigma*np.random.randn(10000)
x = np.sort(x)
#Media y desviacion Estandar

#Instanciación de la distribucion Normal
#con media = mu, y desviacion estandar = sigma 
rv = norm(mu, sigma)
#Asíse calculan los primeros 4 momentos de probabilidad
mean, var, skew, kurt = norm.stats(moments='mvsk')
#mean = media, var = varianza,
#skew = coeficiente de simetria
#kurt = curtosis

#Historgrama
n, bins, patches = plt.hist(x, 20, density=1, facecolor="#5581AD",alpha=0.7) 
#Gráfica de la curva normal sobre el Histrograma
plt.plot(np.sort(x), rv.pdf(x), color = "#f35d52", lw = 3)
plt.title("Histograma CI")
plt.xlabel("Cociente Intelecual")
plt.ylabel("Probabilidad")
plt.text(25, 0.012, r"$\mu=100,\ \sigma=5$")
plt.grid(True)

plt.savefig("histograma.png")
plt.show()