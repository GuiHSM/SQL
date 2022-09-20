create database locadora
use locadora
set dateformat dmy

create table clientes(
cod_cliente int primary key identity(1,1),
rg varchar(9),
nome varchar(50),
enderco varchar(200),
bairro varchar(50),
cidade varchar(50),
estado varchar(50),
telefone int,
email varchar(100),
datanasc datetime,
sexo char,
)

create table categoria(
cod_categoria int primary key identity(1,1),
nome_categoria varchar(50),
)

create table filmes(
cod_filme int primary key identity(1,1),
filme varchar(100),
cod_categoria int,
diretor varchar(100),
valor_locacao numeric(18,2),
reservada char,

constraint fk_categoria foreign key(cod_categoria) references categoria(cod_categoria)
)

create table locacao(
cod_locacao int identity(1,1),
cod_cliente int,
cod_filme int,
data_retirada datetime,
data_devoluacao datetime,
constraint pk_chaves primary key (cod_cliente,cod_filme,cod_locacao),
constraint fk_filmes foreign key(cod_filme) references filmes(cod_filme),
constraint fk_clientes foreign key(cod_cliente) references clientes(cod_cliente)
)

insert into categoria(nome_categoria)values('Ação')
insert into categoria(nome_categoria)values('Romance')
insert into categoria(nome_categoria)values('Aventura')
insert into categoria(nome_categoria)values('Ficção')
insert into categoria(nome_categoria)values('Drama')
insert into categoria(nome_categoria)values('Terror')
insert into categoria(nome_categoria)values('Desenho')
insert into categoria(nome_categoria)values('Policial')
insert into categoria(nome_categoria)values('Comnédia')

insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('321346530','Edson Martin Feitosa','Rua Orlando Alvarenga, 1','Jd. Vera Cruz','Sorocaba','SP','32125809','edson.feitosa@ig.com.br','30/11/1982','M')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('421346111','Rafael Fernando de Moraes Moreno','Rua Francisco de Souza, 123','Jd. Nova Esperança','São Roque','SP','32274567','rafael@terra.com.br','01/04/1985','M')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('324857670','João da Silva','Rua Mario Quintana, 13','Av. Bartolomeu','Sorocaba','SP','32134098','joao@uol.com.br','05/12/1992','M')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('112345553','Maria Chiquinha','Rua Padre Luiz, 55','Jd. Vera Cruz','Sorocaba','SP','23336684','maria@ig.com.br','30/11/1982','F')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('945848768','Rafael Nunes Sales','Rua Orlando Alvarenga,4','Jd. Vera Cruz','Sorocaba','SP','32124609','rafael.sales@terra.com.br','01/04/1985','M')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('676548499','Daniela Martin Fonseca','Rua Guilherme Oliveira,1','Jd. Vera das Acássicas','Votorantim','SP','32132109','danieala.martin@gmail.com','26/12/1986','F')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('321349999','Renata Cristina','Rua Orlando Alvarenga,1','Jd. Vera Cruz','Sorocaba','SP','32125809','renata@gmail.com','01/09/1970','F')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('335466531','Joaquim Ferreira de Souza Junior','Rua Outubro Vermelho,65','Jd. Santa Rosália','Votorantim','SP','11125809','joaquim_junior@ig.com.br','08/04/1980','M')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('112233445','Ladislau Ferreira','Rua Orlando Alvarenga,12345','Jd. Vera Cruz','Sorocaba','SP','32144409','ladislau@terra.com.br','03/01/1988','M')
insert into clientes(rg,nome,enderco,bairro,cidade,estado,telefone,email,datanasc,sexo)values('222222222','Vanessa Oliveira','Rua das Flores,1','Jd. do Sol','Votorantim','SP','32122222','vanessa@ig.com.br','08/08/1998','F')



insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('300',1,'Richard Donner',3.5,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Máquina Mortífera',1,'Richard Donner',3.6,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('A Mexicana',2,'Burr Steers',2,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('A Verdade Nua e Crua',2,'Robert Luketic',4,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('A vida é bela',2,'Roberto Benigni',3.5,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Austrália',3,'Baz Luhrmann',4,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Ultimo Bourn',3,'Paul Greengrass',3.5,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Constantine',4,'Francis Lawrence',2.5,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Os Irmãos Grimm',4,'Terry Gilliam',3.5,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Os Doze Macacos',4,'Terry Gilliam',2.5,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Amadeus',5,'Milos Forman',10,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('As Torres Gêmeas',5,'Oliver Stone',2.5,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Platoon',1,'Oliver Stone',5.5,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('O Advogado do  Diabo',6,'Taylor Hackford',1.5,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Beowulf',7,'Robert Zemeckis',1,'n')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Bolt o super cão',7,'Byron Howard',1.5,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Apertem o cinto o piloto sumiu',9,'Jim Abrahams',3.6,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Doze é demais',9,'Shawn Levy',9.2,'s')
insert into filmes(filme,cod_categoria,diretor,valor_locacao,reservada)values('Uma noite no museu',9,'Shawn Levy',2.5,'n')

insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(1,1,'20/03/2010 19:05:43.887','23/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(1,6,'20/03/2010 19:05:43.887','23/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(1,8,'20/03/2010 19:05:43.887','23/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(1,2,'15/03/2010 00:00:00.000','17/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(1,13,'15/03/2010 00:00:00.000','17/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(2,5,'20/03/2010 19:05:43.887','21/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(3,3,'18/03/2010 19:05:43.887','20/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(3,19,'18/03/2010 19:05:43.887','20/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(4,17,'01/03/2010 19:05:43.887','03/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(5,5,'03/03/2010 19:05:43.887','05/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(6,7,'03/03/2010 19:05:43.887','04/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(6,9,'03/03/2010 19:05:43.887','04/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(7,16,'13/03/2010 19:05:43.887','15/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(7,1,'13/03/2010 19:05:43.887','15/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(7,5,'14/03/2010 19:05:43.887','16/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(7,8,'14/03/2010 19:05:43.887','16/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(7,11,'14/03/2010 19:05:43.887','16/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(7,12,'25/03/2010 19:05:43.887','17/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(8,9,'20/03/2010 19:05:43.887','21/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(9,3,'21/03/2010 19:05:43.887','22/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(9,6,'21/03/2010 19:05:43.887','22/03/2010')
insert into locacao(cod_cliente,cod_filme,data_retirada,data_devoluacao)values(10,10,'20/03/2010 19:05:43.887','21/03/2010')

select*from clientes

select*from filmes

select nome_categoria from categoria

select nome from clientes where sexo='M' and cidade='Sorocaba'

select nome from clientes where sexo='F'

select nome_categoria from categoria order by nome_categoria

select filme from filmes where diretor='Shawn Levy' and reservada='n'

select filme from filmes where valor_locacao>5 and reservada='s'

select max(valor_locacao) from filmes

select filme from filmes where cod_categoria=1

select filme from filmes where (cod_categoria=2 or cod_categoria=3) and reservada='s' and valor_locacao<5

select count(filme) from filmes where reservada='s'

select distinct diretor from filmes

select filme from filmes as f 
inner join locacao as l 
on f.cod_filme=l.cod_filme 
where l.cod_cliente=1

select sum(valor_locacao) from filmes as f 
inner join locacao as l 
on l.cod_filme=f.cod_filme
where l.cod_cliente=1 

select avg(valor_locacao) from filmes

select min(valor_locacao) from filmes

select count(filmes.cod_categoria) from filmes 

select nome from clientes as c inner join locacao as l 
on c.cod_cliente = l.cod_cliente
group by c.nome
having count(c.cod_cliente) > 2