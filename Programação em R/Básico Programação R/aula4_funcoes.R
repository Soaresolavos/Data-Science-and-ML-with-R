
somaNum <- function(n1, n2){
  soma <- n1 + n2
  return(soma)
}

resultado <- somaNum(2, 3)
print(resultado)

comprimento <- function(nome="Olavo"){
  print(paste('Olá',nome))
}

comprimento("Carlos")
comprimento()
