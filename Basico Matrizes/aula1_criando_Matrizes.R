google <- c(450, 451, 452, 445, 468)
microsoft <- c(230, 231, 232, 233, 220)
facebook <- c(323, 367, 389, 325, 352)

acoes <- c(google, microsoft,facebook)

matrixAcoes <- matrix(acoes,byrow=T,nrow=3)

dias <- c('Segunda', 'Terça','Quarta', 'Quinta', 'Sexta')
empresas <- c('GOOGLE:', 'MICROSOFT:', 'FACEBOOK:')

colnames(matrixAcoes) <- dias
rownames(matrixAcoes) <- empresas

print(matrixAcoes)



