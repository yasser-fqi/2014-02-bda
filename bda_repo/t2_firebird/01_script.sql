create table produto
(codproduto			int			not null,
descricaoproduto	varchar(50)		not null,
unidade			    char(2)			not null,
preco				float			not null,
primary key (codproduto))


create table cliente
(codcliente		int			not null,
cliente			varchar(50)		not null,
cpf				char(11)		not null,
endereco		char(30)		not null,
primary key (codcliente))


create table tipospagamento
(codtppagamento			int			not null,
descricaotppagamento	varchar(20)	not null,
primary key (codtppagamento))


create table venda
(nnf					int			  not null,
dtvenda				    smalldatetime not null,
codcliente				int			  not null,
codtppagamento			int			  not null,
vlvenda				    float			  not null,
primary key (nnf, dtvenda),
foreign key (codcliente) references  cliente,
foreign key (codtppagamento) references tipospagamento)


create table itensvenda
(nnf					int			  not null,
dtvenda				    smalldatetime not null,
codproduto				int			  not null,
qtde					float		  not null,
primary key (nnf, dtvenda, codproduto), 
foreign key (nnf, dtvenda) references venda,
foreign key (codproduto) references produto)


create table funcionario
(codfuncionario	int			not null,
funcionario		varchar(50)		not null,
dtadmissao		smalldatetime		not null,
primary key (codfuncionario))


insert into produto values (1,	'Coca Cola', 'Lt',	1.20)
insert into produto values (2,	'Presunto Sadia', 'Kg', 5.40)
insert into produto values (3, 'Sabonete Palmolive', 'Un', 0.65)
insert into produto values (4, 'Shampoo Colorama', 'Un', 2.60)
insert into produto values (5,	'Cerveja Skol',	'Gf',	0.99)


insert into cliente values (1, 'João da Silva', '123456789', 'Rua Andradas, 250')
insert into cliente values (2,	'Maria do Rosário', '26547899', 'Rua Lima e Silva, 648')
insert into cliente values (3,	'Paulo Silveira', '8963254',	'Rua Plínio Brasil Milano, 980')
insert into cliente values (4,	'Rosa Aparecida dos Santos', '5896332123', 'Av. Ipiranga, 8960')
insert into cliente values (5,	'Paula Nunes', '675433332', 'Av. Assis Brasil, 60')


insert into tipospagamento values (1, 'Cheque')
insert into tipospagamento values (2, 'Dinheiro')
insert into tipospagamento values (3, 'Crediário')


insert into venda values(1, '2002-04-20', 1, 1,	15.00)
insert into venda values(2, '2002-04-20', 2, 1, 7.50)
insert into venda values(1,'2002-04-25', 3, 2,	7.90)
insert into venda values(1,	'2002-04-30', 3, 2, 8.50)

insert into itensvenda values (1,	'2002-04-20',	1,	1)
insert into itensvenda values (1,	'2002-04-20',	2,	2)
insert into itensvenda values (2,	'2002-04-20',	1,	3)
insert into itensvenda values (2,	'2002-04-20',	2,	2)
insert into itensvenda values (2,	'2002-04-20',	4,	4)
insert into itensvenda values (1,	'2002-04-25',	3,	9)
insert into itensvenda values (1,	'2002-04-30',	3,	7)


insert into funcionario values (1, 'Pedro Silveira', '2000-04-20')
insert into funcionario values (2,	'Marta Aparecida', '2003-03-25')
insert into funcionario values (3,	'Bruno Romano', '2004-08-26')
insert into funcionario values (4,	'Fátima de Jesus', '2005-12-08')
insert into funcionario values (5,	'Rafael Gastão', '2006-10-08')


