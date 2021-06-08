#install.packages('tm',repos='http://cran.us.r-project.org')
#install.packages('twitteR',repos='http://cran.us.r-project.org')
#install.packages('wordcloud',repos='http://cran.us.r-project.org')
#install.packages('RColorBrewer',repos='http://cran.us.r-project.org')
#install.packages('e1017',repos='http://cran.us.r-project.org')
#install.packages('class',repos='http://cran.us.r-project.org')
library(twitteR)
library(tm)
library(wordcloud)
library(RColorBrewer)

#Conectando com o Twitter
ckey <- "svDOixKNnYpbxEREy3UUlSZtF" 
skey <- "JFENSr9EjHL2MmeoEannfffKcUa6Ta6xXZ2DseHa0mHX30tMTd"
token <- "1040622420984569857-61s8MPFMMJy1q6TJt0Twt1AajdEVC0"
sectoken <- "LzxG2L4bc5FGPZtHiZDCqPd0fdR3a6yXZnYJpqBjC4XZJ"
setup_twitter_oauth(ckey, skey, token, sectoken)

#Retornando Tweets
python.tweets <- searchTwitter('futebol', n=1000, lang="pt-br")

#Pegando dados de texto dos Tweets
python.text <- sapply(python.tweets, function(x) x$getText())

#Clean text data
python.text <- iconv(python.text, 'UTF-8', 'ASCII')
#
python.corpus <- Corpus(VectorSource(python.text))
#
#Document Term Matrix
term.doc.matrix <- TermDocumentMatrix(python.corpus, control = list(removePunctuation = TRUE, stopwords = c(stopwords('portuguese')), removeNumbers = TRUE, tolower = TRUE))

#Covertendo os objetos em matrizes
term.doc.matrix <- as.matrix(term.doc.matrix)

#Get the word counts
word.freq <- sort(rowSums(term.doc.matrix))
dm <- data.frame(word= names(word.freq), freq = word.freq)

#Criando a nuvem de palavras
wordcloud(dm$word, dm$freq, random.order = FALSE, colors= brewer.pal(8, 'Dark2'))




