library("dplyr")
library("tidyr")

set.seed(123)

data <- data.frame(
  Tahun   = 2019:2025,
  Pdb     = round(runif(7,1000,2000),2), # nolint
  Inflasi = round(rnorm(7, mean = 2.5,sd =0.10),2),
  BI_rate = round(rnorm(7,mean = 6.0,sd =1.5),2)
)

View(data)
print(data)

dataKelas <- data.frame(
  nama  = c("Aril","Kahfi","Iqbal","Fauzan"),
  umur  = c(20,19,20,19),
  asal  = c("Endrekang","soppeng","Makassar","Ambon")
)

View(dataKelas)
print(dataKelas)


dataKelas[dataKelas$nama == "Kahfi", "nama"] <- "Abang"
View(dataKelas)
print(dataKelas)
