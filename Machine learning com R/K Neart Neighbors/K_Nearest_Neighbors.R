#Buscando os dados
purchase <- Caravan[,86]

standarized.Caravan <- scale(Caravan[,-86])
#print(var(standarized.Caravan[,1]))
#print(var(standarized.Caravan[,2]))

#Train test split
test.index <- 1:1000
test.data <- standarized.Caravan[test.index,]
test.purchase <- purchase[test.index]

#Train
train.data <- standarized.Caravan[-test.index,]
train.purchase <- purchase[-test.index]

##########################
#KNN Model
##########################
library(class)
set.seed(101)

predicted.purchase <- knn(train.data, test.data, train.purchase, k=1)
#print(head(predicted.purchase))
misclass.error <- mean( test.purchase != predicted.purchase)
print(misclass.error)

#Choosing a K value
predicted.purchase <- NULL
error.rate <- NULL

for (i in 1:20){
  set.seed(101)
  predicted.purchase <- knn(train.data, test.data, train.purchase, k=i)
  error.rate[i]<- mean(test.purchase != predicted.purchase)
}

#print(error.rate)
# Visualize K Elbow Method
library(ggplot2)
k.values <- 1:20
error.df <- data.frame(error.rate, k.values)




















