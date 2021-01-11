# Genera un vector de 44 entradas (aleatorias) llamado ran
ran <- rnorm(44)
ran

# Escribe un loop que eleve al cubo las primeras 15 entradas y les sume 12
pw2 <- 0
for (i in 1:15){
  pw2[i] <- ran[i]**3 + 12
  print(pw2[i])
}

# Guarda el resultado en un data frame, donde la primera columna sea el número aleatorio y la segunda el resultado, nómbralo df.al
df.al <- data.frame(ran=ran[1:15],pw2)
df.al

# Escribe el pseudocódigo del loop anterior
