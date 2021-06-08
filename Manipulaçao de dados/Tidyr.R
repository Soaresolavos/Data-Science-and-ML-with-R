#install.packages('tidyr')
#install.packages('data.base')

#gather()

# comp <- c(1, 1, 1, 2, 2, 2, 3, 3, 3)
# ano <- c(1998, 1999, 2000, 1998, 1999, 2000, 1998, 1999, 2000)
# t1 <- runif(9, min = 0, max = 100)
# t2 <- runif(9, min = 0, max = 100)
# t3 <- runif(9, min = 0, max = 100)
# t4 <- runif(9, min = 0, max = 100)
# 
# df <- data.frame(comp = comp, ano = ano, trimestre_1 = t1, trimestre_2 = t2, trimestre_3 = t3,trimestre_4 = t4)
# 
# acoes <- data.frame(
#   periodo = as.Date('2009-01-01') + 0:9,
#   X = rnorm(10, 0, 1),
#   Y = rnorm(10, 0, 2),
#   Z = rnorm(10, 0, 4)
# )
# acoes


df <- data.frame(coluna_1 = c(NA, "a-x", "b-y", "c-z"))
df.sep <- separate(df, coluna_1, c('ABC', 'XYZ'))
