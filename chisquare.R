# Set working directory
setwd("D:/KULIAH/Worksheet/SEMESTER 8/PENGUMPULAN DATA/PENGOLAHAN DATA BARU")

# ---------------KESELURUHAN KONTEN---------------------------------
# read in the data $Type Postingan dan $Total Interactions
install.packages ("readr")
library(readr)
analisis1 <- read.csv("Kebijakan Pendidikan Normalisasi.csv",header = TRUE)

# $Page Category dan $Type
chisq.test(analisis1$Page.Category, analisis1$Type)
chisq.test(analisis1$Page.Category, analisis1$Type, correct=FALSE)
summary(table(analisis1$Page.Category, analisis1$Type))
table(analisis1$Page.Category, analisis1$Type)

library(ggplot2)
ggplot(analisis1) +
  aes(x = Page.Category, fill = Type) +
  geom_bar() +
  scale_fill_hue() +
  theme_minimal()
