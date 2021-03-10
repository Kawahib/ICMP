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
create table if not exists Leito(
	idLeito int(11) primary key,
	Status bool not null
	/* Incluir FK'S */
	/*Possíveis atribuições: função do leito, equipamentos, chefe de departamento, */
);

create table if not exists Endereco(
	idEndereco integer(11) primary key,
	Rua varchar(255) not null,
	numero varchar(20) not null,
	complemento varchar(255),
);

/* 
	Informações do paciente que será tratado na unidade 
	
*/
create table if not exists ProblemasdoPaciente(
	/* 
		Incluir todas as observações de problemas do paciente para futuras consultas
	*/


);

create table if not exists Paciente(
	idPaciente integer(11) primary key, /* id do paciente deve ser id padrão, pois o mesmo pode não ter outra forma de identificação */
	CartaoSus integer(tamanho), 
	Nome varchar(255) not null,
	Cpf integer(11) not null,
	DataNascimento date not null
	/* Incluir endereço e FK'S */
);

/* Tabela para listar os atendimentos realizados com os clientes 1-N atendimentos */
create table if not exists Atendimentos(
	/* 
		Incluir FK'S
		data de entrada, saida, problemas, atendimento realizado, status, problemas futuros...
	*/


);

/* 
	Funcionarios no ramo da saúde da unidade tais como médicos e enfermeiros 
	
*/
create table if not exists Funcionario(
	idFuncionario integer primary key,
	Rg integer(13) not null,
	Cpf integer(11) not null,
	DataNascimento date not null
	/* Incluir endereço e FK'S */
);

/* 
	Tabela sobre a ocupação do leito por pacientes 
	
*/
create table if not exists OcupacaoLeito(
	idLeito integer(11) primary key,
	NomePaciente varchar(255)
	/* incluir FK'S */
);
