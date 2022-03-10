drop database IF EXISTS vjezbaddl;
CREATE database vjezbaddl;
use vjezbaddl;

create table sestra(
sifra int not null primary key auto_increment,
introvertno bit,
haljina varchar(13) not null,
marka decimal(16.6),
hlace varchar(46) not null,
narukvica int not null

);

create table punac (
sifra int not null primary key auto_increment,
ogrlica int,
gustoca decimal(14.9),
hlace varchar(41)

);

create table zena (
sifra int not null primary key auto_increment,
treciput datetime,
hlace varchar(46),
kratkamajica varchar(31) not null,
jmbag char(11) not null,
bojaociju varchar(39) not null,
haljina varchar(44),
sestra int not null
);

create table cura(
sifra int not null primary key auto_increment,
novcica decimal (16.5) not null,
gustoca decimal(18.6) not null,
lipa decimal(13.10),
ogrlica int not null,
bojakose varchar(38),
suknja varchar(36),
punac int
);

create table sestra_svekar(
sifra int not null primary key auto_increment,
sestra int not null,
svekar int not null
);

create table svekar(
sifra int not null primary key auto_increment,
bojaociju varchar(40) not null,
prstena int,
dukserica varchar(41),
lipa decimal(13.8),
eura decimal(12.7),
majica varchar(35)
);

create table muskarac(
sifra int not null primary key auto_increment,
bojaociju varchar(50) not null,
hlace varchar(30),
modelnaocala varchar(43),
marka decimal(14.5) not null,
zena int not null
);

create table mladic (
sifra int not null primary key auto_increment,
suknja varchar(50) not null,
kuna decimal(16.8) not null,
drugiput datetime,
asocijalno bit,
ekstroventno bit not null,
dukserica varchar(48) not null,
muskarac int
);


alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table zena add foreign key (sestra) references sestra(sifra);
alter table cura add foreign key(punac) references punac(sifra);
alter table muskarac add foreign key(zena) references zena(sifra);
alter table sestra_svekar add foreign key(svekar) references svekar(sifra);
alter table mladic add foreign key(muskarac) references muskarac(sifra);

insert into sestra (haljina,hlace,narukvica) values ('plava','kratke',1);
insert into sestra (haljina,hlace,narukvica) values ('crna','duge',2),('zelena','rifle',2);
insert into zena (kratkamajica,bojaociju,jmbag,sestra) values ('bijela','zelena',12345678912,1);
insert into zena (kratkamajica,bojaociju,jmbag,sestra) values ('crna','zelena',22345678912,2),('bez','sive',22345678913,3);
insert into muskarac (bojaociju,marka,zena) values ('plave','4.4',1),('crvene','5.5',2),('tirkiz','5.8',3);
select * from muskarac ;
delete from muskarac where sifra>6;

INSERT INTO svekar (bojaociju) VALUES ('plava'),('crvena'),('zelena');

select * from svekar;
select * from sestra;
select * from cura;
insert into sestra_svekar (sestra,svekar) values (1,1),(2,2),(3,3);

insert into cura (novcica,gustoca,ogrlica) values (1,15.77,2);

insert into cura (novcica,gustoca,ogrlica) values (1.3,15.77,2);

insert into cura (novcica,gustoca,ogrlica) values ('1.3','15.77','2');



