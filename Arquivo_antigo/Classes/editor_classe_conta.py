from classe_conta import *
from classe_cliente import *

#instanciar objeto

c1= Cliente (nome='Renan Fonseca',cpf='12345678-9',dataNasc='21/01/2005')
c2 = Conta (c1.nome,'00654')

#Chamar metodos
c1.imprime_dados()
c2.extrato()
c2.deposito(150)
c2.extrato()
