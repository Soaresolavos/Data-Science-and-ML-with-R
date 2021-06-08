df <- read.csv('titanic_train.csv')


#visualização de dados vazios
# library(Amelia)
# missmap(df, main = 'Missing map', col = c('yellow', 'black'))

#vizualização dos dados
#ggplot(df, aes(Survived)) + geom_bar()
# ggplot(df, aes(Pclass)) + geom_bar(aes(fill=factor(Pclass)))
#ggplot(df, aes(Sex)) + geom_bar(aes(fill=factor(Sex)))
#ggplot(df, aes(Age)) + geom_histogram(bins=20, alpha=0.5, fill='blue')
#ggplot(df, aes(SibSp)) + geom_bar()
#ggplot(df, aes(Fare)) + geom_histogram(fill= 'green', color = 'black', alpha=0.5)

#Limpando os dados
#pl <- ggplot(df, aes(Pclass, Age))
#pl <- pl + geom_boxplot(aes(group=Pclass, fill= factor(Pclass), alpha=0.4))
#pl + scale_y_continuous(breaks = seq(min(0), max(80), by=2))

#Criando uma função para repor os valores perdidos de idade, pela média da classe

impute_age <- function(age,class){
  out <- age
  for (i in 1:length(age)){
    
    if (is.na(age[i])){
      
      if (class[i] == 1){
        out[i] <- 37
        
      }else if (class[i] == 2){
        out[i] <- 29
        
      }else{
        out[i] <- 24
      }
    }else{
      out[i]<-age[i]
    }
  }
  return(out)
}
 
fixed.ages <- impute_age(df$Age, df$Pclass)

df$Age <- fixed.ages

#Se estiver tudo preto, não existe mais NA values
print(missmap(df, main = 'Verificação da função', col= c('yellow','black'), legend= FALSE ))

#Excluindo as colunas irrelevantes
#df<- select(df, -PassengerId, -Name, -Ticket, -Cabin)

#reorganizando em variáveis categóricas
# df$Survived <- factor(df$Survived)
# df$Pclass <- factor(df$Pclass)
# df$Parch <- factor(df$Parch)
# df$SibSp <- factor(df$SibSp)
#df$Sex<- factor(df$Sex)

#Treinando o modelo
#log.model <- glm(formula = Survived ~ ., family = binomial(link = 'logit'), data = df)
#summary()

#Previsão
library(caTools)
set.seed(101)
split <- sample.split(df$Survived, SplitRatio = 0.7)

train <- subset(df, split == TRUE)
test <- subset(df, split == FALSE)

final.log.model <- glm(formula = Survived ~ ., family = binomial(link = "logit"), data = train)
summary(final.log.model)

probabilities <- predict(final.log.model, newdata = test, type = 'response')

results <- ifelse(probabilities > 0.5, 1, 0)

misClassError <- mean(results != test$Survived)

print((1 - misClassError)*100)

table(test$Survived, probabilities > 0.5)











