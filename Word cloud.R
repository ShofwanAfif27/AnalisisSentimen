setwd("D:/DATA1")
library(readr)
library(ggplot2)
analisis1 <- read.csv("Pemerintah_page.csv",header = TRUE)
##install.packages("aod")
summary(analisis1)
View(analisis1)
#install.packages("tidytext")
#install.packages("textclean")
#install.packages("wordcloud")
#install.packages("RColorBrewer")
#install.packages("dplyr")
##install.packages("tm")
##install.packages("TSstudio")

#for Portal_berita page
analisis2 <- read.csv("Portal_berita.csv")

##install.packages("devtools")
library(tm)
library(wordcloud)
library(tm)

#for_pemerintah_page
corpus <- Corpus(VectorSource(analisis1$Message))
#for_portal_berita_page
corpus <- Corpus(VectorSource(analisis2$Message))


corpus[1][1]
View(corpus)
head(corpus)
#--- text cleaning
corpus <- tm_map(corpus,content_transformer(tolower))

corpus<- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords,stopwords("english"))
corpus <- tm_map(corpus,removePunctuation)
corpus <- tm_map(corpus,stripWhitespace)

#
corpus <- tm_map(corpus,removeWords,c("dan","untuk","dari","selengkapnya","#sahabatdikbud","pada","adalah","sahabatdikbud","yang","dalam","itu","dapat","ini","secara","dengan","tahun"))
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m),decreasing = TRUE)
d <- data.frame(word = names(v),freq=v)
set.seed(1234)
wordcloud(d$word,d$freq, random.order = FALSE, rot.per =0.3, scale =c(2,.9),max.words =100, colors = brewer.pal(8,"Dark2"))
title(main = "world cloud kebijakan pendidikan pandemi",font.main = 0.5, cex.main = 1)

#Plottin wordloud(Keseluruhan Konten)
head(d, 10)
barplot(d[1:10,]$freq, las = 1, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Kata yang paling banyak keluar (Fanspage Pemerintah)",
        ylab = "Word frequencies")
View(d)

#----UJI STASTIK-----#


