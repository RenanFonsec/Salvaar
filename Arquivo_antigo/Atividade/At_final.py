class Cliente:
    def __init__(self, Nome: str, CPF: str, DataNasc: str):
        self.nome = Nome
        self.cpf = CPF
        self.datanasc = DataNasc

    def imprime_dados(self):
        print(f'Nome: {self.nome}'
              f'\nCPF : {self.cpf}'
              f'\nData de nascimento: {self.datanasc}')

class Conta:
    def __init__(self, Titular: str, Numero: str, Saldo=0.0):
        self.titular = Titular
        self.numero = Numero
        self.saldo = Saldo

    def extrato (self):
        print(f'Titular: {self.titular}'
              f'\nNumero: {self.numero}'
              f'\nSaldo: {self.saldo}')

    def deposito (self,valor):
        self.saldo += valor

    def saque(self,valor):
        if self.saldo < valor:
            print('Saldo insuficiente.')
        else:
            self.saldo -= valor

    def transfere (self,valor,conta):
        if self.saldo < valor:
            print('Saldo insuficiente.')
        else:
            self.saldo -= valor
            conta.saldo += valor





    

