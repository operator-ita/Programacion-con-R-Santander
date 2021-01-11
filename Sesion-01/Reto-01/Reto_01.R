# Obtener el directorio de trabajo 
getwd()

# Cambiar el directorio de trabajo a la carpeta de datos 
setwd("C:/Users/Elias Guzmán/Documents/GitHub/R/Programacion-con-R-Santander/Sesion-01/Data")

# Cargamos archivo csv
netflix <- read.csv("netflix_titles.csv")

# Obtener la dimensión
dim(netflix)
# Obtener la clase y el tipo
class(netflix)
typeof(netflix)

# Conociendo los datos  
tail(netflix)
summary(netflix)
str(netflix)

# Filtras por año 2015
net.2015 <- netflix[  netflix$release_year == 2015, ]
net.2015 <- net.2015$title

# exportamos a csv
write.csv(net.2015,"res.netflix.csv")

