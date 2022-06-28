insert into funcionarios (CPF, nome, endereco, telefone, salario, funcao) 
values
(30361290876, 'Ademir José Silva', 'Campinas', 22317865, 0, NULL),
(23161197770, 'Ana Salles Azir', 'Salto', 22317865,0, 'Recepcionista'),
(61254590871, 'Lucia Vicentim', 'Salto', 21316565, 0, 'Bibliotecaria'), 
(20321295096, 'João Alberto Smith', 'Itatiba', 22447865, 0, NULL), 
(32361298734, 'Luís Henrique Talles', 'Campinas', 21531785, 0, NULL), 
(45403612087, 'Francisco José Almeida', 'Indaiatuba', 25417761, 0, NULL);

insert into Editoras values 
(2134000, 'Saraiva', 'São Paulo', 08003434), 
(2287000, 'Eras', 'Brasília', 08002432), 
(3557000, 'Summer', 'Curitiba', 08002198), 
(6655000, 'Pontos', 'São Paulo', 08005600), 
(9898000, 'Marks', 'Rio de Janeiro', 08009000);

insert into Usuarios (CPF, nome, telefone, endereco) 
values
(10122020232, 'Maria de Lourdes Amaral', 35440089, NULL), 
(19321122213, 'José Francisco de Paula', 27219756, NULL), 
(70964411900, 'Luiza Souza Prado', 34559087, NULL), 
(45399109881, 'Raquel Santos', 87603451, NULL), 
(22539910976, 'Ivete Medina Chernell', 48170352, NULL);

insert into Autores (nome, nacionalidade, codigo) 
values
('Ethevaldo Siqueira', 'Brasileira',85668900), 
('Ana Lucia Jankovic Barduchi', 'Brasileira',77548854), 
('Adélia Prado', 'Brasileira',55490076),
('Walter Isaacson', 'Americana',22564411), 
('Steven K. Scott', 'Americana',90984133);

insert into Livros (numero, titulo, genero, edicao, ano_publicacao, CPF_funcionario, codigo_editora, CPF_usuarioRetirar, CPF_usuarioReservar) 
values
(87659908, 'Tecnologias que Mudam Nossa Vida', 'Tecnologia', 2, 2007, NULL, 2134000, NULL, 70964411900),
(67392217, 'Empregabilidade – Competências Pessoais e Profissionais', 'Administração', 22, 1977, 32361298734, 9898000,NULL, NULL), 
(45112239, 'Steve Jobs – a Biografia', 'Biografia', 48, 2011, NULL, 2287000, 19321122213, NULL),
(77680012, 'A Duração do Dia', 'Poesia', 1, 2010,NULL,2134000, 10122020232, NULL), 
(32176500, 'Salomão – O Homem Mais Rico que Já Existiu', 'Romance', 2,2011, 61254590871, 6655000, NULL, NULL),
(67554421, 'Bagagem', 'Poesia', 5,1972,NULL, 6655000, NULL, NULL), 
(10277843, 'O Pelicano', 'Romance', 12, 1984,NULL, 2134000, NULL, NULL);

insert into Livros_Autores (numero_livro, codigo_autor) 
values
(10277843,55490076),
(32176500,90984133),
(45112239,22564411),
(67392217,77548854),
(67554421,55490076),
(77680012,55490076),
(87659908,85668900),
(10277843,85668900),
(32176500,22564411);

select * from usuarios;
select * from funcionarios;
select * from livros;
select * from Livros_Autores;

update funcionarios set salario = 800.00, funcao = 'auxiliar' where cpf = '32361298734';

delete from usuarios where cpf = '45399109881';

delete from livros_autores where codigo_autor = '90984133' and numero_livro ='32176500';

update livros set CPF_usuarioReservar = null, CPF_usuarioRetirar = '70964411900' where numero = '87659908'; 

update livros set CPF_usuarioReservar = '70964411900' where  numero = '10277843';
