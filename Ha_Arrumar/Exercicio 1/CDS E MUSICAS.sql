create database CdsMusicas
use CdsMusicas

create table Cds
(
Codigo int primary key identity (1,1),
Nome varchar(50),
DataCompra datetime,
ValorPago numeric(18,2),
LocalCompra varchar(50),
Album varchar(50)
)

create table Musicas
(
Numero int primary key identity (1,1),
CodigoCD int,
Nome varchar(50),
Artista varchar(50),
Tempo time,

Constraint FCodigoCD_Cds foreign key (CodigoCD) references Cds(Codigo)
)

insert cds(Nome,ValorPago,LocalCompra,Album) values('Adele',22.99,'Ibiúna','25')
insert cds(Nome,ValorPago,LocalCompra,Album) values('fun.',18.29,'São Paulo','Some Nights')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Marshmello',33.49,'São Roque','Alone')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Matheus & Kauan',29.90,'Curitiba','Na Praia (Ao Vivo)')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Arctic Monkeys',22.50,'São Roque','AM')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Sabaton',19.90,'Ibiúna','Heroes')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Coldplay',23.90,'Campinas','Mylo Xyloto')
insert cds(Nome,ValorPago,LocalCompra,Album) values('MAGIC!',15.90,'Alagoinha','Don"t Kill the Magic')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Bruno Mars',33.90,'Mairinque','Unorthodox Jukebox')
insert cds(Nome,ValorPago,LocalCompra,Album) values('Avicii',27.90,'Ibiúna','True')

insert Musicas(CodigoCD,Nome,Artista,Tempo) values(1,'Hello','Adele','00:04:55')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(2,'We Are Young','fun.','00:04:10')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(3,'Alone','Marshmello','00:04:33')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(4,'O Nosso Santo Bateu','Matheus & Kauan','00:03:07')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(5,'R U Mine?','Arctic Monkeys','00:03:43')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(6,'Smoking Snakes','Sabaton','00:03:14')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(7,'Paradise','Coldplay','00:04:38')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(8,'Rude','MAGIC!','00:03:44')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(9,'Locked Out Of Heaven','Bruno Mars','00:03:53')
insert Musicas(CodigoCD,Nome,Artista,Tempo) values(10,'Hey Brother','True','00:04:15')

select * from cds
select album,datacompra from Cds order by (album)
select album,datacompra from Cds order by (DataCompra) desc
select sum(ValorPago) from Cds
select * from Musicas where CodigoCD = 1
select cds.album, musicas.nome from cds join Musicas on cds.Codigo = musicas.CodigoCD   
select nome, artista from Musicas
select sum(tempo) from Musicas
select max(numero) from Musicas 
select avg(tempo) from Musicas
select max(codigo) from cds

