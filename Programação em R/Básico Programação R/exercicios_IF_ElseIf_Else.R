#Verifica��o de numero par ou impar
x <- 72

if( x %% 2 == 0) {
  print('N�mero par')
} else {
  print('N�mero �mpar')
}

#Verificando se X � uma matriz
x <- matrix()
if (is.matrix(x)) {
  print('� uma matriz')
} else {
  print('N�o � uma matriz')
}

#reordena��o de vetores com IF/ELSEIF/ELSE
x <- c(302, 71, 100)
if (x[1] > x[2] ) {
  #compara��o entre o primeiro e segundo
  primeiro <- x[1]
  segundo <- x[2]
} else {
  primeiro <- x[2]
  segundo <- x[1]
}

if (x[3] > primeiro & x[3] > segundo) {
  #terceiro seria o maior
  terceiro <- segundo
  segundo <- primeiro
  primeiro <- x[3]
} else if (x[3] < primeiro & x[3] < segundo) {
  #terceiro seria o menor
  terceiro <- x[3]
} else {
  terceiro <- segundo
  segundo <- x[3]
}

print(paste(primeiro, segundo, terceiro))

x <- c(200, 101, 100)
# #Construindo uma fun��o MAX com IF/ELSEIF/ELSE
if (x[1] > x[2] & x[1] > x[3]) {
  print(x[1])
} else if(x[2] > x[1] & x[2] > x[3]) {
  print(x[2])
} else {
  print(x[3])
}




