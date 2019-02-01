ciudades <- c("Monterrey","San Pedro","Guadalupe","Escobedo")
sexo <- c("Hombre","Mujer")

sample.ciudades <- sample(ciudades,100,replace=TRUE, prob = c(.5, .2, .2, .1))
table(sample.ciudades)

sample.sexo <- sample(sexo, 100,replace=TRUE,prob = c(.3, .7))
table(sample.sexo)  

num.followers <- c(1:100) #Nos hará un vector de 100 elementos

num.followers <- sample(1:1000,100,replace = T)

df <- data.frame( ciudades         = sample.ciudades,
                  sexo             = sample.sexo,
                  num.followers    = num.followers,
                  stringsAsFactors = FALSE) #This will make R stop using factors.

df[10,2]

num.friends <- sample(1:500,100, replace = T)
df <- cbind(df, num.friends) #Column bind

fila <- as.data.frame('Monterrey','Mujer',18,22)
df <- rbind(df,fila) #row bind -> Error: number of columns of arg do not match Do this:
fila <- data.frame(ciudades         = "Monterrey",
                  sexo              = "Hombre",
                  num.followers     = 23,
                  num.friends       = 42) #This will make R stop using factors.

df <- rbind(df,fila)   # Add a new file

df$num.followers
df[c(1:10),c(1,2)] #Primer arg - num de observaciones. Segundo arg - num de variables
df[c(1:10),c("ciudades","num.followers")]

df[c(1:10),] #Hay que dejar la coma.
df[,c("ciudades","num.followers")]

names(df) #Regresa un vector

names(df)[c(3,4)] #Regresa solo la variable tres y cuatro. Sirve para cambiar nombre.Entre otras cosas...

names(df)[c(3,4)] <- c("followers", "friends") #Aquí se ha cambiado el nombre.
