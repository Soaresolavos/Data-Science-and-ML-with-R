library(ISLR)
#print(head(iris))
model <- svm(Species ~., data = iris)
#print(summary(model))
pred.values <- predict(model, iris[1:4])
#print(table(pred.values, iris[,5]))
#cost = 1 
#gamma =0.5
tuned.svm <- svm(Species ~., data = iris, kernel= 'radial', cost = 1, gamma = 0.5)
print(summary(tuned.svm))