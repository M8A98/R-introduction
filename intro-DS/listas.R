lst <- list(nombre = "Pedro" , esposa = "María" , no.hijos = 3 , edad.hijos =c(4,7,9))
lst$nombre
lst[[1]]
lst[[4]][2]


lst2 <- list(nombre = "Felipe" , esposa = "Alicia" , no.hijos = 1 , edad.hijos =c(4))

lst.total <- c(lst,lst2) #Concatenación de las dos listas.Una detrás de la otra.
lst.total2 <- list(lst,lst2)
lst.total[[7]]
lst.total2[[2]][3]
#Las listas se utilizan cuando quieras usar vectores. Los data frames no usan vectores.

#Series de tiempo

vector <- sample(-10:35,72,replace = T)
table(vector)

timeSerie <- ts(vector, start = c(2011,1), end = c(2016,12),frequency = 12)
timeSerie
plot(timeSerie) #Gráfica 

timeSerie2 <- window(timeSerie,start = c(2014,1), end = c(2014,12))
timeSerie2
plot(timeSerie2)
