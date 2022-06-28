class Conta:
    def __init__(self,Titular: str, Numero: str, Saldo=0.0):
        self.titular = Titular
        self.numero = Numero
        self.saldo = Saldo

    def extrato(self):
        print(f'Titular: {self.titular}'
              f'\nNumero: {self.numero}'
              f'\nSaldo: {self.saldo}')

    def deposito(self,valor):
        self.saldo += valor

    def saque(self,valor):
        if self.saldo < valor:
          print('Sua conta não tem esse valor.')
        else:
            self.saldo -= valor



