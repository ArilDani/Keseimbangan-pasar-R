# ==============================
# Case : Keseimbangan Pasar Kopi
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
# 4. Visualisasikan dengan ggplot2
# ==============================

# Pastikan library ggplot2 sudah diinstal
library(ggplot2)

keseimbangan_pasar <- function() {
  # -------------------------------
  # Data awal
  # -------------------------------
  P1 <- 5000; Qd1 <- 400
  P2 <- 7000; Qd2 <- 300
  
  Ps1 <- 5000; Qs1 <- 100
  Ps2 <- 7000; Qs2 <- 250
  
  # -------------------------------
  # Fungsi permintaan dan penawaran
  # -------------------------------
  # Qd = a - bP
  b <- (Qd1 - Qd2) / (P2 - P1)
  a <- Qd1 + b * P1
  
  # Qs = c + dP
  d <- (Qs2 - Qs1) / (Ps2 - Ps1)
  c <- Qs1 - d * Ps1
  
  # -------------------------------
  # Titik keseimbangan
  # -------------------------------
  P_eq <- (a - c) / (b + d)
  Q_eq <- a - b * P_eq
  
  # Cetak hasil analisis
  cat("Fungsi Permintaan : Qd =", a, "-", b, "* P\n")
  cat("Fungsi Penawaran  : Qs =", c, "+", d, "* P\n\n")
  cat("Harga Keseimbangan (P*) =", round(P_eq, 2), "\n")
  cat("Jumlah Keseimbangan (Q*) =", round(Q_eq, 2), "\n")
  
  # -------------------------------
  # Buat data untuk visualisasi
  # -------------------------------
  P <- seq(4000, 8000, by = 100)
  Qd <- a - b * P
  Qs <- c + d * P
  
  data_plot <- data.frame(
    Harga = P,
    Qd = Qd,
    Qs = Qs
  )
  
  # Titik keseimbangan
  titik_eq <- data.frame(
    Harga = P_eq,
    Jumlah = Q_eq
  )
  
  # -------------------------------
  # Visualisasi dengan ggplot2
  # -------------------------------
  ggplot(data_plot, aes(x = Qd, y = Harga)) +
    geom_line(aes(y = Harga, x = Qd, color = "Permintaan"), size = 1.2) +
    geom_line(aes(y = Harga, x = Qs, color = "Penawaran"), size = 1.2) +
    geom_point(data = titik_eq, aes(x = Jumlah, y = Harga), 
               color = "darkgreen", size = 4) +
    geom_text(data = titik_eq, aes(x = Jumlah, y = Harga + 200, 
                                   label = paste0("E (", round(Jumlah, 1), ", ", round(Harga, 0), ")")),
              color = "darkgreen", vjust = -0.5, size = 4.5) +
    scale_color_manual(values = c("Permintaan" = "blue", "Penawaran" = "red")) +
    labs(
      title = "Keseimbangan Pasar Kopi",
      x = "Jumlah (Q)",
      y = "Harga (P)",
      color = "Kurva"
    ) +
    theme_minimal(base_size = 13) +
    theme(
      plot.title = element_text(face = "bold", hjust = 0.5),
      legend.position = "bottom"
    )
}

# Jalankan fungsi
keseimbangan_pasar()
