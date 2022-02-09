drop database if exists opcina;

CREATE database opcina;

use opcina;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupan varchar(50) not null
);

create table opcina(
sifra int not null primary key auto_increment,
zupanija int not null,
naziv varchar(50) not null
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

insert into zupanija (naziv,zupan) values ('Osije�ka','Lidija'),('Zagreba�ka','Klaudija');
insert into zupanija (naziv,zupan) values ('Brodska','Petra');

select * from zupanija;

insert into opcina (zupanija,naziv) values (1,'Vi�njevac');

select * from opcina;

insert into opcina (zupanija,naziv) values (1,'Josipovac'),(2,'Zagreb'),(2,'Novo Selo'),(3,'Slavonski Brod'),(3,'�akovo');



