#mencetak angka
for (i in 1:5) {
  cat("Iterasi ke-", i, "\n")
}

#membuat segitiga
for (i in 1:10) {
  cat(strrep("*", i), "\n")
}


#segitiga samakaki

n <- 5

for (i in 1:n) {
  # jumlah spasi di kiri = n - i
  spaces <- strrep(" ", n - i)
  # jumlah bintang = 2*i - 1
  stars <- strrep("*", 2 * i - 1)
  
  # gabungkan spasi + bintang
  cat(spaces, stars, "\n", sep = "")
}


x <- 2
y <- 3

x * y

#function
penjumlahan_10 <- function(F) {
  return(F+10)
}

penjumlahan_10(5)

rata6 <- function(a,b,c,d,e,f) {
  hasil <- (a+b+c+d+e+f) / 6
  return(hasil)
}
rata6(8,2,3,6,4,2)


luas_segitiga <- function(a,b) {
  luas <- (a*b) /2
  return(luas)
}

luas_segitiga(4,5)

keliling_segittiga <- function(a,b,c) {
  keliling <- a+b+c
  return(keliling)
}

keliling_segittiga(4,4,4)


luas_persegi <- function(a,b) {
  luas <- (a*b)
  return(luas)
}

keliling_persegi  <- function(x,y) {
  keliling <-x*y
  return(keliling)
}
keliling_persegi(4,8)






#kalkulator
kalkulator <- function(a, b, operator) {
  if (operator == "+") {
    hasil <- a + b
  } else if (operator == "-") {
    hasil <- a - b
  } else if (operator == "*") {
    hasil <- a * b
  } else if (operator == "/") {
    hasil <- a / b
  } else {
    hasil <- "Operator tidak dikenal!"
  }
  
  return(hasil)
}

#hasil
kalkulator(10, 5, "+")  # hasil: 15
kalkulator(10, 5, "/")  # hasil: 2






# Fungsi utama
hitung_bangun <- function() {
  
  # persegi
  persegi <- function(sisi) {
    luas_persegi <- function(s) {
      return(s * s)
    }
    
    keliling_persegi <- function(s) {
      return(4 * s)
    }
    
    cat("Luas persegi:", luas_persegi(sisi), "\n")
    cat("Keliling persegi:", keliling_persegi(sisi), "\n\n")
  }
  
  # segitiga
  segitiga <- function(alas, tinggi, sisi1, sisi2, sisi3) {
    
    luas_segitiga <- function(a, t) {
      return(0.5 * a * t)
    }
    
    keliling_segitiga <- function(x, y, z) {
      return(x + y + z)
    }
    
    cat("Luas segitiga:", luas_segitiga(alas, tinggi), "\n")
    cat("Keliling segitiga:", keliling_segitiga(sisi1, sisi2, sisi3), "\n\n")
  }
  
  # memanggil fungsi
  cat("=== Hasil Perhitungan ===\n")
  
  # Persegi
  persegi(5)
  
  # Segitiga
  segitiga(alas = 6, tinggi = 4, sisi1 = 5, sisi2 = 6, sisi3 = 7)
}

# Jalankan fungsi utama
hitung_bangun()

