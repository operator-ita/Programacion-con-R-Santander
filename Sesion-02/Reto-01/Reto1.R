set.seed(134)
x <- round(rnorm(1000, 175, 6), 1)

# 1. Calcule, la media, mediana y moda de los valores en `x`
# Media
mean(x)
# Mediana
median(x)
# Moda
library(DescTools)
Mode(x)
# 2. Obtenga los deciles de los números en x
quantile(x, seq(0.1,0.9, by = 0.1)) 

# 3. Encuentre la rango intercuartílico, la desviación estándar y varianza muestral de las mediciones en x
# Rango intercuartílico
IQR(x)
# Desviación estándar
sd(x)
# Varianza muestral
var(x) 
