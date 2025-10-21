library("dplyr")
library("tidyr")
library("ggplot2")

set.seed(123)

data <- data.frame(
  ID     = 1:30,
  Tinggi = rnorm(30,mean = 120,sd = 10),
  Berat  = rnorm(30,mean = 80,sd = 10),
  Gender = sample(c("Laki-Laki","perempuan"),30,replace = TRUE)
)
View(data)
head(data)
print(data)

#scatterplot
plot(
  data$Tinggi,data$Berat,
  main = "hubingan tinggi dan berat",
  xlab = "Tinggi badan(cm)",
  ylab = "Berat badan(kg)",
  col  = ifelse(data$Gender == "Laki-Laki","blue","red"),
  pch  = 19
    )
legend("topleft",legend = c("Laki-Laki","Perempuan"),
       col = c("blue","red"),pch = 19)

#histogram
hist(
  data$Tinggi,
  main   = "Distribusi Tinggi badan",
  xlab   = "Tinggi badan (cm)",
  col    = "lightblue",
  border = "white"
  
)
hist(
  data$Berat,
  main   = "Distribusi Tinggi badan",
  xlab   = "Berat badan (kg)",
  col    = "lightgreen",
  border = "white"
)

boxplot(
  Tinggi ~ Gender,
  data   = data,
  main   = "Tinggi badan per gender",
  col    = c("lightblue","lightpink"),
  ylab   = "Tinggi badan (cm)"   
)

ggplot(data, aes(x = Tinggi, y = Berat, color = Gender)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(
    title = "Hubungan Tinggi dan Berat Badan",
    x     = "Tinggi Badan (cm)",
    y     = "Berat Badan (kg)"
  ) +
  theme_minimal()




