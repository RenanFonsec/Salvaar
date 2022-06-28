drop database biblioteca;
create database biblioteca;
use biblioteca;

create table usuarios (
CPF varchar (11) not null,
nome varchar (45),
telefone varchar (16),
endereco varchar (45),  
primary key (CPF));

create table livros (
Numero varchar(8) not null,
titulo varchar(100),
genero varchar (15),
edicao varchar(20),
ano_publicacao varchar(4),
primary key (Numero));

create table editoras (
codigo varchar (8) not null,
nome varchar (45),
endereco varchar (45),
contato varchar (16),
primary key (codigo));

create table autores (
nome varchar (45),
nacionalidade varchar (20),
codigo varchar (8) not null,
primary key (codigo));

create  table funcionarios (
CPF varchar (11) not null,
nome varchar (45),
endereco varchar (45),
telefone varchar (16),
salario varchar (10),
funcao varchar (30),
primary key (CPF));

create table Livros_Autores (
numero_livro varchar (8),
codigo_autor varchar (8),
primary key (numero_livro, codigo_autor),
foreign key (numero_livro) references livros (numero),
foreign key (codigo_autor) references autores (codigo)
);

alter table livros
add column CPF_funcionario varchar (11) ,
add foreign key (CPF_funcionario) references funcionarios (cpf);

alter table livros
add column codigo_editora varchar (8),
add foreign key (codigo_editora) references editoras (codigo);

alter table livros
add column CPF_usuarioRetirar varchar (11),
add foreign key (CPF_usuarioRetirar) references usuarios (CPF);

alter table livros 
add column CPF_usuarioReservar varchar (11) unique,
add foreign key (CPF_usuarioReservar) references usuarios (CPF);

