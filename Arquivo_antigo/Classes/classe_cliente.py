class Cliente:
    def __init__(self, nome: str, cpf: str, dataNasc: str):
        self.nome = nome
        self.cpf = cpf
        self.dataNasc = dataNasc

    def imprime_dados(self):
        print(f'Nome: {self.nome}'
              f'\nCPF: {self.cpf}' 
              f'\nData Nasc: {self.dataNasc}')