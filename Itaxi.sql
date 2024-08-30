create database itaxi;
use itaxi;

create table carro(
	placa varchar(7),
	marca varchar(30),
	modelo varchar(60),
	anofab date,
	primary key( placa )
);

create table cliente(
	id varchar(4),
	nome varchar(80),
	primary key(id)
);

create table cliente_empresa(
	id varchar(4),
	cnpj varchar(18),
	primary key(id),
	foreign key(id) references cliente(id)
);

create table cliente_pessoa(
	id varchar(4),
	cpf varchar(14),
	primary key(id),
	foreign key(id) references cliente(id)
);

create table corrida(
	cliid varchar(4),
	placa varchar(7),
	dataPedido date,
	foreign key(cliid) references cliente(id),
	foreign key(placa) references carro(placa),
	primary key(cliid, placa)
);

-- Populando o DB 

-- Carros
insert into carro values("X4Z8Q1", "Fiesta", "ST", 2019);
insert into carro values("Y5T9R2", "Corolla", "XEi", 2022);
insert into carro values("Z6U0S3", "Hilux", "SW4", 2023);

-- Clientes
insert into cliente values(1001, "Ana Souza");
insert into cliente values(2002, "Carlos Silva");
insert into cliente values(3003, "Diana Martins");

-- Cliente Pessoa
insert into cliente_pessoa values(1001, "123.456.789-10");
insert into cliente_pessoa values(2002, "987.654.321-00");

-- Cliente Empresa
insert into cliente_empresa values(3003, "12.345.678/0001-23");

-- Corridas
insert into corrida values(1001, "X4Z8Q1", '2024-08-01');
insert into corrida values(1001, "Y5T9R2", '2024-08-02');
insert into corrida values(2002, "Z6U0S3", '2024-08-01');
insert into corrida values(2002, "Y5T9R2", '2024-08-03');
insert into corrida values(3003, "X4Z8Q1", '2024-08-02');

