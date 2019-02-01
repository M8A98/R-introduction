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