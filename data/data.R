if(!file.exists("data")){
  dir.create("data")
}

URL <-"https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType-DOWNLOAD"
download.file(URL,destfile = "./data/camaras.csv", method = "curl") #curl because I have mac

camarasData <- read.table("./data/camaras.csv",sep = ",", header = TRUE)

head(camarasData)              

camarasData <- read.csv("./data/camaras.csv") #Same as read.table

camarasData2 <- read.csv("./data/camaras.csv", nrows = 10)

camarasData3 <- read.csv("./data/camaras.csv", nrows = 5, skip = 5)#Skip will ignore the number of files you specify.
