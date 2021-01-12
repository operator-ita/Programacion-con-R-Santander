setwd("C:/Users/Elias Guzmán/Documents/GitHub/R/Programacion-con-R-Santander/Sesion-02/Data")

url20211 <- "https://www.football-data.co.uk/mmz4281/2021/D1.csv"
url20212 <- "https://www.football-data.co.uk/mmz4281/2021/D2.csv"

download.file(url = url20211, destfile = "D1.csv", mode = "wb")
download.file(url = url20212, destfile = "D2.csv", mode = "wb")

lista <- lapply(c("D1.csv","D2.csv"), read.csv) 

head(lista[[1]]);
head(lista[[2]])
length(lista[[1]]); length(lista[[2]]); 

library(dplyr)
lista1 <- lapply(lista, select, Date, HomeTeam:FTR) 
head(lista1)
tail(lista1)

data <- do.call(rbind, lista1)
dim(data)
head(data)
tail(data)
