# ==============================
# case : Keseimbangan Pasar Kopi
# ==============================
# Soal:
# Jika harga kopi Rp5.000 per sachet, konsumen membeli 400 sachet per hari.
# Jika harga naik menjadi Rp7.000, permintaan turun menjadi 300 sachet.
#
# Produsen:
# Jika harga Rp5.000, menjual 100 sachet.
# Jika harga Rp7.000, menjual 250 sachet.
#
# Pertanyaan:
# 1. Tentukan fungsi permintaan (Qd)
# 2. Tentukan fungsi penawaran (Qs)
# 3. Tentukan titik keseimbangan pasar
#
# --------------
# Penyelesaiaan:
# --------------

keseimbangan_pasar <- function() {
  # Data
  P1 <- 5000; Qd1 <- 400
  P2 <- 7000; Qd2 <- 300
  
  Ps1 <- 5000; Qs1 <- 100
  Ps2 <- 7000; Qs2 <- 250
  
  # Fungsi permintaan: Qd = a - bP
  b <- (Qd1 - Qd2) / (P2 - P1)
  a <- Qd1 + b * P1
  
  # Fungsi penawaran: Qs = c + dP
  d <- (Qs2 - Qs1) / (Ps2 - Ps1)
  c <- Qs1 - d * Ps1
  
  # Harga dan jumlah keseimbangan
  P_eq <- (a - c) / (b + d)
  Q_eq <- a - b * P_eq
  
  # hasil
  cat("Fungsi Permintaan : Qd =", a, "-", b, "* P\n")
  cat("Fungsi Penawaran  : Qs =", c, "+", d, "* P\n\n")
  cat("Harga Keseimbangan (P*) =", P_eq, "\n")
  cat("Jumlah Keseimbangan (Q*) =", Q_eq, "\n")
}

# memanggil fungsi
keseimbangan_pasar()








