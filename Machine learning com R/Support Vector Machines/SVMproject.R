loans <- read.csv('loan_data.csv')
#print(str(loans))
#Convertendo em categorias
loans$credit.policy <- factor(loans$credit.policy)
loans$inq.last.6mths <- factor(loans$inq.last.6mths)
loans$delinq.2yrs <- factor(loans$delinq.2yrs)
loans$pub.rec <- factor(loans$pub.rec)
loans$not.fully.paid <- factor(loans$not.fully.paid)
#print(str(loans))
#Analise Exploratória (Gráficos)
#SVM Model
library(caTools)
set.seed(101)

sample = sample.split(loans$not.fully.paid, SplitRatio = 0.7)
train <- subset(loans, sample == T)
test <- subset(loans, sample == F)

#train SVM
library(e1071)
model <- svm(not.fully.paid ~., data = train)
#print(summary(model))
#predict.values <- predict(model, test[1:13])
#print(table(predict.values, test$not.fully.paid)) Resultados ruins
#Usando Tune para escolher Cost e Gamma melhores

#tuned.results <- tune(svm, train.x = not.fully.paid ~., data = train, kernel = 'radial', ranges = list(cost = c(100, 200), gamma = c(0.1, 1)))
#print(summary(tuned.results))

#Best: cost = 100, gamma = 0.1

tuned.model <- svm(not.fully.paid ~., data = train, cost = 100, gamma = 0.1)
tuned.predictions <- predict(tuned.model, test[1:13])
print(table(tuned.predictions, test$not.fully.paid))



















