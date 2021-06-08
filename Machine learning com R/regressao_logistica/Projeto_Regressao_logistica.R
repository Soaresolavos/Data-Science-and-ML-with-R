adult <- read.csv('adult_sal.csv')
library(dplyr)
adult <- select(adult, -X)

#LIMPEZA DE DADOS
## Juntando tipos de trabalhadores
unemp <- function(job) {
  job <- as.character(job)
  if (job == 'Never-worked' | job == 'Without-pay') {
    return('Unemployed')
  } else {
  return(job)
  }
}

##Aplicando a função unemp
adult$type_employer <- sapply(adult$type_employer, unemp)
#print(table(adult$type_employer))

#Agrupando Self-emp-inc e Self-emp-not-inc

group_emp <- function(job){
  if (job=='Local-gov' | job=='State-gov'){
    return('SL-gov')
  }else if (job=='Self-emp-inc' | job=='Self-emp-not-inc'){
    return('self-emp')
  }else{
    return(job)
  }
}

##Aplicando a função group_emp
adult$type_employer <- sapply(adult$type_employer, group_emp)
#print(table(adult$type_employer))


#ESTADO CIVIL
group_marital <- function(mar){
  mar <- as.character(mar)
  
  # Not-Married
  if (mar=='Separated' | mar=='Divorced' | mar=='Widowed'){
    return('Not-Married')
    
    # Never-Married   
  }else if(mar=='Never-married'){
    return(mar)
    
    #Married
  }else{
    return('Married')
  }
}

#Aplicando a função "group_marital"
adult$marital <- sapply(adult$marital, group_marital)
#print(table(adult$marital))


#Coluna Países - Limpeza de dados

Asia <- c('China','Hong','India','Iran','Cambodia','Japan', 'Laos' ,
          'Philippines' ,'Vietnam' ,'Taiwan', 'Thailand')

North.America <- c('Canada','United-States','Puerto-Rico' )

Europe <- c('England' ,'France', 'Germany' ,'Greece','Holand-Netherlands','Hungary',
            'Ireland','Italy','Poland','Portugal','Scotland','Yugoslavia')

Latin.and.South.America <- c('Columbia','Cuba','Dominican-Republic','Ecuador',
                             'El-Salvador','Guatemala','Haiti','Honduras',
                             'Mexico','Nicaragua','Outlying-US(Guam-USVI-etc)','Peru',
                             'Jamaica','Trinadad&Tobago')
Other <- c('South')

#
group_country <- function(ctry){
  if (ctry %in% Asia){
    return('Asia')
  }else if (ctry %in% North.America){
    return('North.America')
  }else if (ctry %in% Europe){
    return('Europe')
  }else if (ctry %in% Latin.and.South.America){
    return('Latin.and.South.America')
  }else{
    return('Other')      
  }
}

adult$country <- sapply(adult$country, group_country)
#print(table(adult$country))

#str(adult)

adult$type_employer <- sapply(adult$type_employer,factor)
adult$country <- sapply(adult$country,factor)
adult$marital <- sapply(adult$marital,factor)

#str(adult)

#Dados missing
library(Amelia)
adult[adult == '?'] <- NA

#print(table(adult$type_employer))


adult$type_employer <- sapply(adult$type_employer,factor)
adult$country <- sapply(adult$country,factor)
adult$marital <- sapply(adult$marital,factor)
adult$occupation <- sapply(adult$occupation,factor)

#Drop missing data

adult <- na.omit(adult)

#Renomeando países por região

adult <- rename(adult, region = country)

####################################
### Modelo de Regressão Logística###
####################################

#str(adult)

#Train Test Split
#library(caTools)
set.seed(101)
# 
 sample <- sample.split(adult$income, SplitRatio = 0.7) 
# 
# #Treino
train <- subset(adult, sample == T)
 #Teste
test <- subset(adult, sample == F)

model = glm(income ~ ., family = binomial(logit), data = train)
summary(model)










