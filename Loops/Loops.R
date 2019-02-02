v <- rnorm(30)
elementos <- 10

v2 <- 0

for (i in 1:elementos){
  v2[i] <- v[i] * v[i]
  cat("i: ",i," ",v[i]," ^2 = ",v2[i], "\n")
}

#Matriz
#Bucle anidado

matriz <- matrix(0,nrow = 30, ncol = 30)

for (i in 1:dim(matriz)[1]) {
   for (j in 1:dim(matriz)[2]) {
     matriz[i,j] <- i *j
     cat(i, " * ", j, " = ", matriz[i,j],"\n")
   }
}

matriz[1:10,1:10]

#While loop

frase <- "Mira nomas, este tío sólo quiere hacer dinero. Na, no creo. Esta comenzando :)"
i <- 0
letra <- ""

while(letra != ")"){
  i <- i + 1
  letra <- substr(frase,i,i)
  cat(i," ", letra, "\n")
}

#Repeat - Es infinito. Debe haber una order para que pare. Break

frase <- "Mira nomas, este tío sólo quiere hacer dinero. Na, no creo. Esta comenzando :)"
i <- 0
letra <- ""

repeat{
  i <- i + 1
  letra <- substr(frase,i,i)
  cat(i," ", letra, "\n")
  if(letra == ")"){
    break
  }
}

#Breaks en un for

matriz <- matrix(0,nrow = 30, ncol = 30)

for (i in 1:dim(matriz)[1]) {
  for (j in 1:dim(matriz)[2]) {
    if(i == j){
      break
    }else{
    matriz[i,j] <- i *j
    cat(i, " * ", j, " = ", matriz[i,j],"\n")
    }
  }
}

matriz[1:10,1:10]


#Commando Next

frase <- "Mira nomas, este tío sólo quiere hacer dinero. Na, no creo. Esta comenzando :)"
i <- 0
letra <- ""

while(letra != ")"){
  i <- i + 1
  letra <- substr(frase,i,i)
  if(letra == "a"){
    next #No hagas nada cuando es esa letra pero sigue adelante
  }
  cat(i," ", letra, "\n")
}

matriz <- matrix(0,nrow = 30, ncol = 30)

for (i in 1:dim(matriz)[1]) {
  for (j in 1:dim(matriz)[2]) {
    if(i == j){
      next
    }else{
      matriz[i,j] <- i *j
      cat(i, " * ", j, " = ", matriz[i,j],"\n")
    }
  }
}

matriz[1:10,1:10]

#Cuándo usar o no usar los bucles
ptm <- proc.time() #Opens
v1 <- seq(1,10)#Crear secuencia de 1 a 10
v2 <- seq(20,11)
vt <- 0
vt <- v1 + v2
proc.time() - ptm #Closes time elapse

ptm <- proc.time()
for (i in 1:50) mad(stats::runif(500))
proc.time() - ptm
