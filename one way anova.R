# Set working directory
setwd("D:/KULIAH/Worksheet/SEMESTER 8/PENGUMPULAN DATA/PENGOLAHAN DATA BARU")


# ---------------KESELURUHAN KONTEN---------------------------------
# read in the data 
install.packages ("readr")
library(readr)
analisis4 <- read.csv("Kebijakan Pendidikan Normalisasi.csv", header = TRUE)


summary(analisis4$Total.Interactions)
summary(analisis4$Overperforming.Score)

plot(analisis4)
one.way <- (aov(analisis4$Total.Interactions ~ analisis4$Overperforming.Score))
summary(one.way)
plot(one.way)


# Uji ANOVA
one.way <- (aov(analisis4$Total.Interactions ~ analisis4$Type))
summary(one.way)

one.way <- (aov(analisis4$Overperforming.Score ~ analisis4$Type))
summary(one.way)


#Mean paling tinggi 
tapply(analisis4$Total.Interactions, list(analisis4$Page.Category), mean)

tapply(analisis4$Total.Interactions, list(analisis4$Type), mean)

tapply(analisis4$Overperforming.Score, list(analisis4$Type), mean)

# Post Hoc Tukey's Test
install.packages ("agricolae")
library(agricolae)

tukey.test <- TukeyHSD(one.way)
tukey.test

plot(tukey.test)