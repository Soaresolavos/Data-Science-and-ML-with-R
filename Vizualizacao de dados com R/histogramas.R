#install.packages('ggplot2')
#install.packages('ggplot2movies')
library(ggplot2)
library(ggplot2movies)

#primeira camadas (Dado e est�tica)
pl <- ggplot(movies, aes(x = rating))

#geometria
pl2 <- print(pl + geom_histogram(binwidth = 0.1, color = 'black', fill ='yellow', alpha = 0.4))

#legendas
pl3 <- pl2 + xlab('Avalia��o (Notas)') + ylab('Quantidade') 
print(pl3 + ggtitle('Histograma Filmes'))
