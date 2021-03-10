/* 
	Base de dados para atender as necessidades de uma agencia de saúde
	tem como base guardar dados sobre pacientes e funcionarios para que seja
	assim possível manutenir e gerenciar a mesma.
*/

create database ICMP;
use ICMP;

/* 
	Informações do leito, onde será guardad informações para que seja possível:

*/
drop table if exists Leito;
create table Leito(
	idLeito int(11) primary key,
	Status bool not null
	/* Incluir FK'S */
	/*Possíveis atribuições: função do leito, equipamentos, chefe de departamento, */
);

drop table if exists Endereco;
create table Endereco(
	idEndereco integer(11) primary key,
	Rua varchar(255) not null,
	numero varchar(20) not null,
	complemento varchar(255),
);

/* 
	Informações do paciente que será tratado na unidade 
	
*/
drop table if exists ProblemasdoPaciente;
create table ProblemasdoPaciente(
	/* 
		Incluir todas as observações de problemas do paciente para futuras consultas
	*/


);

drop table if exists Paciente;
create table Paciente(
	idPaciente integer(11) primary key, /* id do paciente deve ser id padrão, pois o mesmo pode não ter outra forma de identificação */
	CartaoSus integer(tamanho), 
	Nome varchar(255) not null,
	Cpf integer(11) not null,
	DataNascimento date not null
	/* Incluir endereço e FK'S */
);

/* Tabela para listar os atendimentos realizados com os clientes 1-N atendimentos */
drop table if exists Atendimentos;
create table Atendimentos(
	/* 
		Incluir FK'S
		data de entrada, saida, problemas, atendimento realizado, status, problemas futuros...
	*/


);

/* 
	Funcionarios no ramo da saúde da unidade tais como médicos e enfermeiros 
	
*/
drop table if exists Funcionario;
create table Funcionario(
	idFuncionario integer primary key,
	Rg integer(13) not null,
	Cpf integer(11) not null,
	DataNascimento date not null
	/* Incluir endereço e FK'S */
);

/* 
	Tabela sobre a ocupação do leito por pacientes 
	
*/
drop table if exists OcupacaoLeito;
create table OcupacaoLeito(
	idLeito integer(11) primary key,
	constraint fk_Paciente foreign key(idPaciente) references Paciente (idPaciente),
	/*NomePaciente varchar(255)	????*/
	/* 
		incluir FK'S 
		ProblemasdoPaciente
	*/
);
