v <- c(1, 2, 3, 4, 5)

 for (temperatura in v) {
   resultado <- temperatura + 1
   print('A temperatura + 1 é igual:')
   print(resultado)
 }



mat <- matrix(1:25, nrow = 5)

for (num in mat) {
  print(num)
}


mat <- matrix(1:25, nrow = 5)

for (linha in 1:nrow(mat)) {
  for (coluna in 1:ncol(mat)) {
    print(paste('O elemento da linha: ', linha, 'e coluna:', coluna,' é ', mat[linha, coluna]))
  }
}