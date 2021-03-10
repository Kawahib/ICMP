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
);

/* 
	Informações do paciente que será tratado na unidade 
	
*/
create table if not exists Paciente(
	idPaciente integer(11) primary key, /* id do paciente deve ser id padrão, pois o mesmo pode não ter outra forma de identificação */
	CartaoSus integer(tamanho), 
	Nome varchar(255) not null,
	Cpf integer(11) not null,
	DataNascimento date not null
);

/* 
	Funcionarios no ramo da saúde da unidade tais como médicos e enfermeiros 
	
*/
create table if not exists Funcionario(
	idFuncionario integer primary key,
	Rg integer(13) not null,
	Cpf integer(11) not null,
	DataNascimento date not null
);

/* 
	Tabela sobre a ocupação do leito por pacientes 
	
*/
create table if not exists OcupacaoLeito(
	idLeito integer(11) primary key,
	NomePaciente varchar(255)
);
