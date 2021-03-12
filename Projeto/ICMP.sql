/* Versão 1.0 */
drop database if exists ICMP;
create database ICMP;
use ICMP;

create sequence public.sq_pk_Leito start 1;
drop table if exists Leito;
create table public.Leito(
	idLeito bigint not null default nextval('public.sq_pk_Leito'),
	Status bool not null,
	constraint pk_Leito primary key (idLeito)
);

create sequence public.sq_pk_Endereco start 1;
drop table if exists Endereco;
create table public.Endereco(
	idEndereco bigint not null default nextval('public.sq_pk_Endereco'),
	Rua varchar(255) not null,
	numero varchar(20) not null,
	complemento varchar(255),
	constraint pk_Endereco primary key (idEndereco)
);

drop table if exists Paciente;
create table Paciente(
	idPaciente bigint primary key,
	CartaoSus bigint, 
	Nome varchar(255) not null,
	Cpf bigint not null,
	DataNascimento date not null,
	idEndereco bigint not null,
	foreign key(idEndereco) references Endereco (idEndereco)
);

drop table if exists Funcionario;
create table Funcionario(
	CRM varchar(9) primary key,
	Nome varchar(255) not null,
	Rg bigint not null,
	Cpf bigint not null,
	DataNascimento date not null,
	idEndereco bigint not null,
	foreign key(idEndereco) references Endereco (idEndereco)
);

drop table if exists OcupacaoLeito;
create table OcupacaoLeito(
	idOCPLeito bigint primary key,
	DataEntrada date,
	Observacoes varchar(255),
	idPaciente bigint,
	idLeito bigint,
	foreign key(idPaciente) references Paciente (idPaciente),
	foreign key(idLeito) references Leito (idLeito)
);

create sequence public.sq_pk_Atendimentos start 1;
drop table if exists Atendimentos;
create table public.Atendimentos(
	idAtendimento bigint not null default nextval('public.sq_pk_Atendimentos'),
	DataSaida date,
	idOCPLeito bigint not null, 
	constraint pk_Atendimentos primary key (idAtendimento),
	foreign key(idOCPLeito) references OcupacaoLeito (idOCPLeito)
);
