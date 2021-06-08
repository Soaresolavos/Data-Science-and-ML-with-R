# Decisin Trees

#tree <- rpart(Kyphosis ~., method = 'class', data = kyphosis)
#printcp(tree)
#plot(tree, uniform = T, main = 'Kyphosis Tree')
#text(tree, use.n = T, all = T)
#prp(tree)

##Random Forest - using randomForest library

rf.model <- randomForest(Kyphosis ~., data = kyphosis)
print(rf.model)