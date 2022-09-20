Create database Mercado_Dominique
Use Mercado_Dominique

Create Table Fornecedor(
Codigo int identity(1,1) primary key,
Nome varchar(100)not null,
CNPJ varchar(18)not null,
Endereco varchar(100) not null,
Telefone varchar(100),
E_mail Varchar(100)
)

Create Table Estoque(
Codigo int identity(1,1) primary key,
Quantidade int not null,
Localizacao varchar(50) not null,
Descricao varchar(50) not null
)

Create Table Cliente(
Codigo int identity(1,1) primary key,
Nome varchar(100)not null,
CPF varchar(18)not null,
Endereco varchar(100) not null,
Telefone varchar(12),
E_mail Varchar(100),
RG varchar(15) not null,
Sexo varchar(9) not null
)

Create Table Produto(
Codigo varchar(15) primary key,
Descrição varchar(50) not null,
Valor_Unitario Decimal(38,2) not null,
Cod_Estoque int not null,
Constraint FK_Estoque_Produto Foreign Key (Cod_Estoque) references Estoque(Codigo)
)

Create Table Venda(
Codigo int identity(1,1) primary key,
Cod_Estoque int not null,
Data DateTime not null,
Valor_total Decimal(38,2) not null,
Cod_Cli int not null,
Constraint FK_Estoque_Venda Foreign Key (Cod_Estoque) references Estoque(Codigo),
Constraint FK_Cliente_Venda Foreign Key (Cod_Cli) references Cliente(Codigo)
)

Create Table Compra(
Codigo int identity(1,1) primary key,
Cod_Estoque int not null,
Data DateTime not null,
Valor_total Decimal(38,2) not null,
Cod_forn int not null,
Constraint FK_Estoque_Compra Foreign Key (Cod_Estoque) references Estoque(Codigo),
Constraint FK_Fornecedor_Compra Foreign Key (Cod_forn) references Fornecedor(Codigo)
)

Create Table NFSaida(
Codigo int identity(1,1) primary key,
Data DateTime not null,
Valor_total Decimal(38,2) not null,
Constraint FK_Venda_NFSaida Foreign Key (Codigo) references Venda(Codigo)
)

Create Table NFEntrada(
Codigo int identity(1,1) primary key,
Data DateTime not null,
Valor_total Decimal(38,2) not null,
Constraint FK_Compra_NFEntrada Foreign Key (Codigo) references Compra(Codigo)
)

Create Table Itens_de_Compra(
Codigo int identity(1,1) primary key,
Cod_compra int not null,
Cod_Produto varchar(15)not null,
Quantidade int not null,
Valor Decimal(38,2) not null,
Constraint FK_Venda_ItensCompra Foreign Key (Cod_compra) references Compra(Codigo),
Constraint FK_Produto_ItensCompra Foreign Key (Cod_Produto) references Produto(Codigo),
)

Create Table Itens_de_Venda(
Codigo int identity(1,1) primary key,
Cod_venda int not null,
Cod_Produto varchar(15) not null,
Quantidade int not null,
Valor Decimal(38,2) not null,
Constraint FK_Venda_ItensVenda Foreign Key (Cod_venda) references Venda(Codigo),
Constraint FK_Produto_ItensVenda Foreign Key (Cod_Produto) references Produto(Codigo)
)

Create Table Tipos_Pagamento(
Codigo int identity(1,1)primary key,
Descricao varchar(50) NOT NULL,
)

Create Table Tipos_Conta(
Codigo int identity(1,1)primary key,
Descricao varchar(50) NOT NULL,
)

Create Table Contas_Pagar(
Codigo int identity(1,1)primary key,
Cod_Pag int not null,
Cod_Conta int not null,
Cod_compra int not null ,
Constraint FK_Tipos_Pagamento_Contas_Pagar Foreign Key (Cod_Pag) references Tipos_Pagamento(Codigo),
Constraint FK_Tipos_Conta_Contas_Pagar Foreign Key (Cod_Conta) references Tipos_Conta(Codigo),
Constraint FK_Compra_Contas_Pagar Foreign Key (Cod_compra) references Compra(Codigo)
)

Create Table Contas_Receber(
Codigo int identity(1,1)primary key,
Cod_Pag int not null,
Cod_Conta int not null ,
Cod_Venda int not null,
Constraint FK_Tipos_Pagamento_Contas_Receber Foreign Key (Cod_Pag) references Tipos_Pagamento(Codigo),
Constraint FK_Tipos_Conta_Contas_Receber Foreign Key (Cod_Conta) references Tipos_Conta(Codigo),
Constraint FK_Venda_Contas_Receber Foreign Key (Cod_Venda) references Venda(Codigo)
)

insert into Cliente(Nome,CPF,Endereco,Telefone,E_mail,RG,Sexo) values('Joaquin','545-545-545-23','Rua Enrico Del"Aqua 98','943605604','jOAQUINDAQUITANDADOSEUJORGE@HOTMAIL.COM','12-435-656-3','Masculino')
insert into Fornecedor(Nome,CNPJ,Endereco,Telefone,E_mail) values('Quitanda do seu jorge','123-456-781-12','Rua Joao Barreto 14','123456789','Quitandinha_muitolegal@gmail.com')
insert into Estoque(Quantidade,Localizacao,Descricao) values(120,'Rua 22','Guarda Batata')
insert into Produto(Codigo,Descrição,Valor_Unitario,Cod_Estoque) values('ABCDEFGHIJKLMNO','Batatinha do bem',1.20,1)
insert into Tipos_Pagamento(Descricao) values('Boleto')
insert into Tipos_Pagamento(Descricao) values('Á vista')
insert into Tipos_Conta(Descricao) values('Á vista')
insert into Tipos_Conta(Descricao) values('Á prazo')
insert into Compra(Cod_Estoque,Data,Valor_total,Cod_forn) values(1,'24-11-2000',100.00,1)
insert into Venda(Cod_Cli,Data,Valor_total,Cod_Estoque) values(1,'25-11-2000',2.40,1)
insert into NFEntrada(Data,Valor_total) values('25-11-2000',100.00)
insert into NFSaida(Data,Valor_total) values('24-11-2000',2.40)
insert into Itens_de_Compra(Cod_compra,Cod_Produto,Quantidade,Valor) values(1,'ABCDEFGHIJKLMNO',100,1.00)
insert into Itens_de_Venda(Cod_venda,Cod_Produto,Quantidade,Valor) values(1,'ABCDEFGHIJKLMNO',2,1.20)
insert into Contas_Pagar(Cod_Pag,Cod_Conta,Cod_compra) values(1,2,1)
insert into Contas_Receber(Cod_Conta,Cod_Pag,Cod_Venda) values(1,2,1)