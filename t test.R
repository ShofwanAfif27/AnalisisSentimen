# Set working directory
setwd("D:/KULIAH/Worksheet/SEMESTER 8/PENGUMPULAN DATA/PENGOLAHAN DATA BARU")

# ---------------KESELURUHAN AKUN---------------------------------
# read in the data 
install.packages ("readr")
library(readr)
analisis3 <- read.csv("Kebijakan Pendidikan Normalisasi.csv",header = TRUE)

# Independent 2-group T-test
# Page Category dan Total Interactions
library(data.table)
analisis3 <- data.table(analisis3)
analisis3[Page.Category==1 | Page.Category==2, mean(Total.Interactions), by = Page.Category]
t.test(analisis3$Total.Interactions ~ analisis3$Page.Category)

#Page Category dan Overperforming score
library(data.table)
analisis3 <- data.table(analisis3)
analisis3[Page.Category==1 | Page.Category==2, mean(Overperforming.Score), by = Page.Category]
t.test(analisis3$Overperforming.Score ~ analisis3$Page.Category)


#Plotting T-Test Using Boxplot
boxplot(analisis3$Total.Interactions)
boxplot(analisis3$Total.Interactions~analisis3$Page.Category)
boxplot(analisis3$Total.Interactions~analisis3$Type)


#ggqqplot
ggqqplot(analisis3$Total.Interactions~analisis3$Overperforming.Score)
ggqqplot(analisis3$Total.Interactions)
ggqqplot(analisis3$Overperforming.Score)
shapiro.test(analisis3$Total.Interactions)

