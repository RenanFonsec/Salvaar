algoritmo "semnome"
// Função :
// Autor :
// Data : 30/03/2022
// Seção de Declarações
var
montador: vetor [1..10] de inteiro
nomes: vetor [1..10] de caractere
testador: logico
teste: inteiro
contador: inteiro
caca_palavra: caractere
inicio
para teste de 1 ate 10 faca
   escreval ("Informe o nome da",teste,"ºcriança:")
   leia(nomes[teste])
   escreval ("Informe a idade da",teste,"ºcriança:")
   leia(montador[teste])
   limpatela
fimpara


limpatela
testador <- falso
enquanto testador = falso faca
   testador <- verdadeiro
   para teste de 1 ate 9 faca
      se montador[teste] > montador[teste + 1] entao
         contador <- montador[teste]
         montador[teste] <- montador[teste + 1]
         montador[teste + 1] <- contador
         caca_palavra <- nomes[teste]
         nomes[teste] <- nomes[teste + 1]
         nomes[teste + 1] <- caca_palavra
         testador <- falso
      fimse
   fimpara
fimenquanto
para teste de 1 ate 10 faca
   escreval ("Essa é a sêquencia das crianças: ",nomes[teste],montador[teste])
fimpara

fimalgoritmo
