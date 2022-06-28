from At_final import *

historico = []
titular = str
x = str

def lin():
    print('='*55)

def conta_escolha():
    titular = str(input('Deseja utilizar qual conta para realizar a transferência?'
                        '\nRenan'
                        '\nMatheus\n'))
    lin()

    if titular == 'Renan':
        return c2
    elif titular == 'Matheus':
        return c4


lin()

c1= Cliente ('Renan','12345678-9','21/01/2005')
c2= Conta (c1.nome,'123-6',0.0)
c3= Cliente ('Matheus','12345678-9','16/04/2000')
c4= Conta (c3.nome,'321-9',0.0)

print('        Bem-vindo')

while x != '6':

    x = input('Qual serviço desejado?'
              '\n1 - Extrato'
              '\n2 - Deposito'
              '\n3 - Saque'
              '\n4 - Histórico'
              '\n5 - Transferência'
              '\n6 - Sair\n')
    if x == '1':
        lin()
        conta_escolhida = conta_escolha()
        conta_escolhida.extrato()
    elif x == '2':
        lin()
        y = float(input('Qual o valor do deposito? '))
        lin()
        conta_escolhida = conta_escolha()
        conta_escolhida.deposito(y)
        conta_escolhida.extrato()
        historico.append(f'Deposito na conta de {conta_escolhida.titular} no valor de {y}')
        lin()
    elif x == '3':
        lin()
        z = float(input('Qual o valor do saque? '))
        lin()
        conta_escolhida = conta_escolha()
        conta_escolhida.saque(z)
        conta_escolhida.extrato()
        historico.append(f'Saque na conta de {conta_escolhida.titular} no valor de {z}')
        lin()
    elif x == '4':
        for transacao in historico:
            lin()
            print(transacao)
            lin()
        if len(historico)== 0:
            print('Você não possui um historico ainda.')
            lin()

    elif x == '5':
            valor = float (input('Qual o valor que será transferido?'))
            conta_escolhida = conta_escolha()
            print(conta_escolhida.titular)
            if conta_escolhida.titular == 'Renan':
                outra_conta = c4
            else:
                outra_conta = c2
            conta_escolhida.transfere(valor,outra_conta)
            conta_escolhida.extrato()
            historico.append(f'Transferência da conta  {conta_escolhida.titular} no valor de {valor} para a conta {outra_conta.titular}')

    elif x == '6':
        lin()
        print('Obrigado pela preferencia!')
    else:
        print('Opção invalida !!')


