# ola <- function(nome){
#   print(paste('Olá', nome))
# }
# ola("Sam")

# ola2 <- function(nome){
#   n <- nome 
#   return(paste('Oie',n))
# }
# print(ola2("Carlos"))

# prod <- function(n1, n2){
#   mult <- n1 * n2
#   print(mult)
# }
# prod(3, 4)

# numCheck <- function(num, v){
#   for (elemento in v) {
#     if (elemento == num) {
#       return(TRUE)
#     }
#   }
#   return(FALSE)
# }
# 
# print(numCheck(5, c(1, 2, 3)))

# numCount <- function(num, v){
#   contador <- 0
#   for(elemento in v) {
#     if (elemento == num) {
#       contador <- contador + 1
#     }
#   }
#   return(contador)
# }
# print(numCount(2,c(1,1,2,2,3,1,4,5,5,2,2,1,3,2)))

#Quantas barras de 5kg e de 1kg? (mínimo de barras possível)
# contadorBarras <- function(pacote) {
#   qtdUmKg <- pacote %% 5
#   qtdCincoKg <- (pacote - qtdUmKg)/5
#   return(qtdUmKg + qtdCincoKg)
# }
# print(contadorBarras(34))

#Soma os valores de um vetor excluindo os valores divisíveis por 3
# somador <- function(a, b, c) {
#   addVetor <- c(0)
#   
#   if(a%%3 != 0){
#     addVetor <- append(a, addVetor)
#   }
#   
#   if(b%%3 != 0){
#     addVetor <- append(b, addVetor)
#   }
#   
#   if(c%%3 != 0){
#     addVetor <- append(c, addVetor)
#   }
#   
#   return(sum(addVetor))
# }
# 
# print(somador(1, 2, 9))

numeroPrimo <- function(num) {
  if (num == 2) {
    return(TRUE)
  } 
  for(x in 2:(num-1)) {
    if ( num%%x == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

print(numeroPrimo(17))
