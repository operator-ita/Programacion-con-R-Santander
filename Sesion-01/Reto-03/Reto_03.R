# Establecemos el directorio de trabajo donde se encuentran los datos 
setwd("C:/Users/Elias Guzmán/Documents/GitHub/R/Programacion-con-R-Santander/Sesion-01/Data")

# Almacenalo en un data frame que se llame amazon.best
amazon.best <- read.csv("bestsellers with categories.csv")

# Crear un df
df.amazon <-  data.frame(amazon.best)

# Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame
tAmazon <- t(df.amazon)
colnames(tAmazon) <- df.amazon$Name 

# ¿Cúal es el libro de menor y mayor precio? 
amazon.best[which.max(amazon.best[,"Price"]),]
amazon.best[which.min(amazon.best[,"Price"]),]

# ¿Cúal es el libro de menor y mayor precio? 
which.max(tAmazon["Price",])
which.min(tAmazon["Price",])
