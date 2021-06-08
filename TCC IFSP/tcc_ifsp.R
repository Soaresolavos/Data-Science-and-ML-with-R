library(tidyr)
library(readxl)
#df <- read_excel('3t20 balanco - weg s.a.xlsx', sheet = 'Balanco - Consolidado')
df<- read.csv('3t20 balanco - weg s.a.csv')

contas <- as.data.frame(df$X) 

b1 <- as.data.frame(df$X.1)

dados <- merge(contas, b1)