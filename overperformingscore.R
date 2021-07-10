# Set working directory
setwd("D:/KULIAH/Worksheet/SEMESTER 8/PENGUMPULAN DATA/PENGOLAHAN DATA BARU")



# ---------------KESELURUHAN AKUN---------------------------------
# read in the data
install.packages ("readr")
library(readr)
analisis1 <- read.csv("Kebijakan Pendidikan.csv",header = TRUE)


# RATA RATA SUMMARY 
summary(analisis1)

# JUMLAH INTERAKSI
data_interaksi <- analisis1$Total.Interactions
summary(data_interaksi)

mean(data_interaksi)
sum(data_interaksi)
sd(data_interaksi)

# HIST
hist(analisis1$Total.Interactions, breaks=12, col="red")

# OVERPERFORMING
data_overperforming <- analisis1$Overperforming.Score..weighted.....Likes.1x.Comments.1x..

sum(data_overperforming)

#RUMUS MENGHITUNG OVERPERFORMING
sum(data_interaksi)/sum(data_overperforming)



# ---------------OFFICIAL PAGE---------------------------------
# read in the data
library(readr)
analisis2 <- read.csv("Official Page.csv",header = TRUE)


# RATA RATA SUMMARY 
summary(analisis2)

# JUMLAH INTERAKSI
data_interaksi <- analisis2$Total.Interactions
summary(data_interaksi)

mean(data_interaksi)
sum(data_interaksi)
sd(data_interaksi)


# OVERPERFORMING
data_overperforming <- analisis2$Overperforming.Score..weighted.....Likes.1x.Comments.1x..


sum(data_overperforming)

#RUMUS MENGHITUNG OVERPERFORMING
sum(data_interaksi)/sum(data_overperforming)

# ---------------PORTAL BERITA---------------------------------
# read in the data
library(readr)
analisis3 <- read.csv("Portal Berita.csv",header = TRUE)


# RATA RATA SUMMARY 
summary(analisis3)

# JUMLAH INTERAKSI
data_interaksi3 <- analisis3$Total.Interactions
summary(data_interaksi3)

mean(data_interaksi3)
sum(data_interaksi3)
sd(data_interaksi3)

# OVERPERFORMING
data_overperforming <- analisis3$Overperforming.Score..weighted.....Likes.1x.Comments.1x..
sum(data_overperforming)

#RUMUS MENGHITUNG OVERPERFORMING
sum(data_interaksi)/sum(data_overperforming)


