# Pegando os dados
df <- read.csv('student-mat.csv', sep = ';')

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)
library(caTools)



# Apenas as variáveis numéricas
#num.cols <- sapply(df, is.numeric)

#filtrando
#cor.data <- cor(df[, num.cols])

#print(corrplot(cor.data, method = 'color'))

#pl <- ggplot(df, aes(x = G3)) + geom_histogram(bins = 20, alpha = 0.5, fill = 'red')
#print(pl)

#Dividindo os dados: Treino e Teste
#Random state = 101 
set.seed(101)

sample <- sample.split(df$G3, SplitRatio = 0.7)
#Treino 70%
train <- subset(df, sample == TRUE)
# Teste 30%
test <- subset(df, sample == FALSE)

#Construindo e treinando o modelo
model <- lm(G3 ~ . , train )
#print(summary(model))

#Predictions
G3.predictions <- predict(model, test)

results <- cbind(G3.predictions, test$G3)

colnames(results) <- c('predicted', 'actual')

results <- as.data.frame(results)

#print(head(results))

#removing negative values
to_zero <- function(x) {
  if (x < 0) {
    return(0)
  } else {
    return(x)
  }
} 

#aply zero function
results$predicted <- sapply(results$predicted, to_zero)

#Mean squared error
mse <- mean((results$actual - results$predicted)^2)
print('MSE')
print(mse)

#Root Mean Squared Error
rmse <- (mse^0.5)
print('RMSE')
print(rmse)

#SSE and SST
SSE <- sum((results$predicted - results$actual)^2)
SST <- sum((mean(df$G3) - results$actual)^2)

R2 <- 1 - SSE/SST
print('R2')
print(R2)
