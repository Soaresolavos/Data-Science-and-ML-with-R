library(dplyr)

df <- mtcars

#Usando Nesting
#result <- arrange(sample_n(filter(df, mpg>20),size=5), desc(mpg))

#Usando multiplas variáveis
#a <- filter(mpg>20)
#b <- sample_n(a, size = 5)
#result <- arrange(b, desc(mpg))

#usando pipe operator

resultado <- df %>% filter(mpg>20) %>% sample_n(size = 5) %>% arrange(desc(mpg))

print(resultado)

