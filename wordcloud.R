# STEP 1: Retrieving the data and uploading the packages

install.packages("wordcloud")
library(wordcloud)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("wordcloud2")
library(wordcloud2)
install.packages("ggplot2")
library(ggplot2)

install.packages("tm")
library(tm)

# Set working directory
setwd("D:/KULIAH/Worksheet/SEMESTER 8/PENGUMPULAN DATA/PENGOLAHAN DATA BARU")



# ---------------KESELURUHAN AKUN---------------------------------
# read in the data
install.packages ("readr")
library(readr)
analisis1 <- read.csv("Kebijakan Pendidikan.csv",header = TRUE)

corpus <- Corpus(VectorSource(analisis1$Description))
corpus [1][1]
View(corpus)

# Text Cleaning
corpus <- tm_map(corpus,content_transformer(tolower))

corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)

# Text Cleaning kata penghubung
corpus <- tm_map(corpus,removeWords,c("dan", "yang", "untuk", "dari", "lagi", "kami",
                                      "jika", "pun", "selain", "tersebut", "serta",
                                      "karena", "bersama", "pada", "itu", "dalam", "di", 
                                      "juga", "melalui", "menjadi", "melakukan", "adalah",
                                      "jadi", "saja", "ingin", "selengkapnya", "tentang",
                                      "hal", "bisa", "sahabatdikbud", "tetap", "tapi",
                                      "hanya", "yaitu", "bagi", "seperti", "suatu",
                                      "ini", "dapat", "sebagai", "harus", "sesuai",
                                      "dengan", "akan", "per", "ada", "telah", "para", 
                                      "masa", "tidak", "secara", "atau", "tak",
                                      "oleh", "kita", "apa", "agar", "sudah", 
                                      "kepada", "saat"))
# Deklarasi 
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word =names(v), freq=v)

# Plotting WordCloud
wordcloud(d$word,d$freq, random.order = FALSE, rot.per = 0.3, scale = c(4,.8),
          max.words = 900, colors = brewer.pal(8, "Dark2"))

title(main = "word cloud kebijakan pendidikan", font.main = 2, cex.main = 2.5)


# Plottin wordloud(Keseluruhan Konten)
head(d, 10)
barplot(d[1:10,]$freq, las = 1, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Kata yang paling banyak muncul (Keseluruhan Konten)",
        ylab = "Word frequencies")
View(d)


# ---------------OFFICIAL PAGE---------------------------------
# read in the data
library(readr)
analisis2 <- read.csv("Official Page.csv",header = TRUE)

corpus <- Corpus(VectorSource(analisis2$Description))
corpus [1][1]
View(corpus)

# Text Cleaning
corpus <- tm_map(corpus,content_transformer(tolower))

corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)

# Text Cleaning kata penghubung
corpus <- tm_map(corpus,removeWords,c("dan", "yang", "untuk", "dari", "lagi", "kami",
                                      "jika", "pun", "selain", "tersebut", "serta",
                                      "karena", "bersama", "pada", "itu", "dalam", "di", 
                                      "juga", "melalui", "menjadi", "melakukan", "adalah",
                                      "jadi", "saja", "ingin", "selengkapnya", "tentang",
                                      "hal", "bisa", "sahabatdikbud", "tetap", "tapi",
                                      "hanya", "yaitu", "bagi", "seperti", "suatu",
                                      "ini", "dapat", "sebagai", "harus", "sesuai",
                                      "dengan", "akan", "per", "ada", "telah", "para", 
                                      "masa", "tidak", "secara", "atau", "tak",
                                      "oleh", "kita", "apa", "agar", "sudah", 
                                      "kepada", "saat"))
# Deklarasi 
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word =names(v), freq=v)

# Plotting WordCloud
wordcloud(d$word,d$freq, random.order = FALSE, rot.per = 0.3, scale = c(4,.8),
          max.words = 900, colors = brewer.pal(8, "Dark2"))

title(main = "word cloud Official Page", font.main = 2, cex.main = 2.5)


# Plottin wordcloud(Official Page)
head(d, 10)
barplot(d[1:10,]$freq, las = 1, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Kata yang paling banyak muncul (Official Page)",
        ylab = "Word frequencies")
View(d)

# ---------------PORTAL BERITA---------------------------------
# read in the data
library(readr)
analisis3 <- read.csv("Portal Berita.csv",header = TRUE)

corpus <- Corpus(VectorSource(analisis3$Description))
corpus [1][1]
View(corpus)

# Text Cleaning
corpus <- tm_map(corpus,content_transformer(tolower))

corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)

# Text Cleaning kata penghubung
corpus <- tm_map(corpus,removeWords,c("dan", "yang", "untuk", "dari", "lagi", "kami",
                                      "jika", "pun", "selain", "tersebut", "serta",
                                      "karena", "bersama", "pada", "itu", "dalam", "di", 
                                      "juga", "melalui", "menjadi", "melakukan", "adalah",
                                      "jadi", "saja", "ingin", "selengkapnya", "tentang",
                                      "hal", "bisa", "sahabatdikbud", "tetap", "tapi",
                                      "hanya", "yaitu", "bagi", "seperti", "suatu",
                                      "ini", "dapat", "sebagai", "harus", "sesuai",
                                      "dengan", "akan", "per", "ada", "telah", "para", 
                                      "masa", "tidak", "secara", "atau", "tak",
                                      "oleh", "kita", "apa", "agar", "sudah", 
                                      "kepada", "saat"))
# Deklarasi 
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word =names(v), freq=v)

# Plotting WordCloud
wordcloud(d$word,d$freq, random.order = FALSE, rot.per = 0.3, scale = c(4,.8),
          max.words = 900, colors = brewer.pal(8, "Dark2"))

title(main = "word cloud Portal Berita", font.main = 2, cex.main = 2.5)


# Plottin wordcloud(Portal Berita)
head(d, 10)
barplot(d[1:10,]$freq, las = 1, names.arg = d[1:10,]$word,
        col ="lightblue", main ="Kata yang paling banyak muncul (Portal Berita)",
        ylab = "Word frequencies")
View(d)


# ---------------KONTEN BERLABEL POSITIF---------------------------------
# read in the data
install.packages ("readr")
library(readr)
analisis4 <- read.csv("Konten Berlabel Positif.csv",header = TRUE)

corpus <- Corpus(VectorSource(analisis4$Description))
corpus [1][1]
View(corpus)

# Text Cleaning
corpus <- tm_map(corpus,content_transformer(tolower))

corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)

# Text Cleaning kata penghubung
corpus <- tm_map(corpus,removeWords,c("dan", "yang", "untuk", "dari", "lagi", "kami",
                                      "jika", "pun", "selain", "tersebut", "serta",
                                      "karena", "bersama", "pada", "itu", "dalam", "di", 
                                      "juga", "melalui", "menjadi", "melakukan", "adalah",
                                      "jadi", "saja", "ingin", "selengkapnya", "tentang",
                                      "hal", "bisa", "sahabatdikbud", "tetap", "tapi",
                                      "hanya", "yaitu", "bagi", "seperti", "suatu",
                                      "ini", "dapat", "sebagai", "harus", "sesuai",
                                      "dengan", "akan", "per", "ada", "telah", "para", 
                                      "masa", "tidak", "secara", "atau", "tak",
                                      "oleh", "kita", "apa", "agar", "sudah", 
                                      "kepada", "saat"))
# Deklarasi 
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word =names(v), freq=v)

# Plotting WordCloud
wordcloud(d$word,d$freq, random.order = FALSE, rot.per = 0.3, scale = c(4,.8),
          max.words = 900, colors = brewer.pal(8, "Dark2"))

title(main = "word cloud konten positif", font.main = 2, cex.main = 2.5)



# ---------------KONTEN BERLABEL NEGATIF---------------------------------
# read in the data
install.packages ("readr")
library(readr)
analisis5 <- read.csv("Konten Berlabel Negatif.csv",header = TRUE)

corpus <- Corpus(VectorSource(analisis5$Description))
corpus [1][1]
View(corpus)

# Text Cleaning
corpus <- tm_map(corpus,content_transformer(tolower))

corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, stripWhitespace)

# Text Cleaning kata penghubung
corpus <- tm_map(corpus,removeWords,c("dan", "yang", "untuk", "dari", "lagi", "kami",
                                      "jika", "pun", "selain", "tersebut", "serta",
                                      "karena", "bersama", "pada", "itu", "dalam", "di", 
                                      "juga", "melalui", "menjadi", "melakukan", "adalah",
                                      "jadi", "saja", "ingin", "selengkapnya", "tentang",
                                      "hal", "bisa", "sahabatdikbud", "tetap", "tapi",
                                      "hanya", "yaitu", "bagi", "seperti", "suatu",
                                      "ini", "dapat", "sebagai", "harus", "sesuai",
                                      "dengan", "akan", "per", "ada", "telah", "para", 
                                      "masa", "tidak", "secara", "atau", "tak",
                                      "oleh", "kita", "apa", "agar", "sudah", 
                                      "kepada", "saat"))
# Deklarasi 
tdm <- TermDocumentMatrix(corpus)
m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word =names(v), freq=v)

# Plotting WordCloud
wordcloud(d$word,d$freq, random.order = FALSE, rot.per = 0.3, scale = c(4,.8),
          max.words = 900, colors = brewer.pal(8, "Dark2"))

title(main = "word cloud konten negatif", font.main = 2, cex.main = 2.5)
