from At_final import *

def lin():
    print('='*40)

c1= Cliente ('Thales Esteves','12345678-9','19/06/2000')
c2= Conta (c1.nome,'321-9',0.0)

c3= Cliente ('Renan Fonseca','12345678-9','21/01/2005')
c4= Conta (c3.nome,'123-6',0.0)

lin()
c4.extrato()
lin()
c2.extrato()
lin()
c2.deposito(400)
c2.extrato()
lin()
c4.deposito(400)
c4.extrato()
lin()
c2.tranfere(100,c4)
c2.extrato()
lin()
c4.extrato()
lin()

