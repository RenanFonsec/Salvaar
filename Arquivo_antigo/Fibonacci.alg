algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 30/03/2022
// Se��o de Declara��es
var
n: inteiro
fib: inteiro
fib1: inteiro
temp: inteiro
inicio
leia (n)
fib <- 0
fib1 <- 1
enquanto n > 0 faca
     temp <- fib
     fib <- fib1
     fib1 <- fib1 +temp
     n <- n -1
escreval(fib)
fimenquanto
fimalgoritmo
