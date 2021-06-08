library(ISLR)
df <- College

#Train test split
library(caTools)
#library(rpart)
set.seed(101)

sample <- sample.split(df$Private, SplitRatio = 0.70)
train <- subset(df, sample == T)
test <- subset(df, sample == F)

#Random Forest Model
library(randomForest)
rf.model <- randomForest(Private ~. , data = train, importance = TRUE)
print(rf.model$confusion)

rf.preds <- predict(rf.model, test)
print(table(rf.preds, test$Private))


#Decision Tree Model
#tree <- rpart(Private ~ ., method = 'class', data = train)
#print(summary(tree))
#tree.preds <- predict(tree, test)
#print(head(tree.preds))

#tree.preds está em duas colunas, juntando as duas em uma com uma função
#tree.preds <- as.data.frame(tree.preds)
#print(tree.preds)
#joiner <- function(x){
# if(x >= 0.5){
#    return('Yes')
#  } else {
#    return('No')
#  }
#} 

#tree.preds$Private <- sapply(tree.preds$Yes,joiner)
#print(head(tree.preds))

#print(table(tree.preds$Private, test$Private))








