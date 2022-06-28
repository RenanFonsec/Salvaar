from At_final import *

x = str
def lin():
    print('='*40)
lin()
c1= Cliente ('Renan Fonseca','12345678-9','21/01/2005')
c2= Conta (c1.nome,'123-6',0.0)
print('        Dados do cliente')
lin()
c1.imprime_dados()
lin()
print('         Extrato da conta')
lin()
c2.extrato()
lin()


while x != '4':
    lin()
    x=input('Qual serviço desejado?'
            '\n1 - Extrato'
            '\n2 - Deposito'
            '\n3 - Saque'
            '\n4 - Sair\n')
    if x == '1':
        lin()
        c2.extrato()
    elif x == '2':
        lin()
        y= float(input('Qual o valor do deposito? '))
        c2.deposito(y)
        c2.extrato()
    elif x == '3':
        lin()
        z=float(input('Qual o valor do saque? '))
        c2.saque(z)
        c2.extrato()
    elif x == '4':
        lin()
        print('Obrigado pela preferencia!')
    else:
        print('Opção invalida !!')



