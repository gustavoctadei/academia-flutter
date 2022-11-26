create database dart_mysql;

create table aluno(
    id int not null primary key auto_increment,
    nome varchar(200)
);

create table conta_corrente(
	id int primary key not null auto_increment,
    saldo decimal(10,2)
);

create table tira_dinheiro(
	id int primary key not null auto_increment,
    data_saque datetime default now()
);