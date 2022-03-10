drop database if exists vjezbaddl;
create database  vjezbaddl;
use vjezbaddl;

create table cura (
	sifra int not null primary key auto_increment,
	haljina varchar(33) not null,
	drugiput datetime not null,
	suknja varchar(38),
	narukvica int,
	introvertno bit,
	majica varchar(40) not null,
	decko int
	);

create table decko(
	sifra int not null primary key auto_increment,
	indiferentno bit,
	vesta varchar(34),
	asocijalno bit not null
	);
	
create table decko_zarucnica(
	sifra int not null primary key auto_increment,
	decko int not null,
	zarucnica int not null
);

create table zarucnica(
	sifra int not null primary key auto_increment,
	narukvica int,
	bojakose varchar(37) not null,
	novcica decimal (15,9),
	lipa decimal (15,8) not null,
	indiferentno bit not null
);

create table prijatelj(
	sifra int not null primary key auto_increment,
	modelnaocala varchar (37),
	treciput datetime not null,
	ekstroventno bit not null,
	prviput datetime,
	svekar int not null
);

create table svekar (
	sifra int not null primary key auto_increment,
	stilfrizura varchar (48),
	ogrlica int not null,
	asocijalno bit not null
);

create table brat (
	sifra int not null primary key auto_increment,
	suknja varchar (47),
	ogrlica int not null,
	asocijalno bit not null,
	neprijatelj int not null
);

create table neprijatelj(
	sifra int not null primary key auto_increment,
	majica varchar (32),
	haljina varchar (43) not null,
	lipa decimal (16,8),
	modelnaocala varchar (49) not null,
	kuna decimal (12,6) not null,
	jmbag char(11),
	cura int
	
);

alter table brat add foreign key (neprijatelj) references neprijatelj (sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table cura add foreign key (decko) references decko (sifra);
alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);
alter table prijatelj add foreign key (svekar) references svekar(sifra);

select * from neprijatelj n ;
insert into neprijatelj (haljina,modelnaocala,kuna) values ('plava','bosna','30.05');
insert into neprijatelj (haljina,modelnaocala,kuna) values ('žuta','ray','40.55');
insert into neprijatelj (haljina,modelnaocala,kuna) values ('roza','ban','10.22222244');

insert into cura (haljina,drugiput,majica) values ('bijela','1990-02-18','roza');
insert into cura (haljina,drugiput,majica) values ('plava','1994-02-18','za'),('pink','1955-05-05','boja');

insert into decko (asocijalno) values ('');
select * from decko d ;
insert into decko (asocijalno) values (''),('');
insert into zarucnica (bojakose,lipa,indiferentno) values ('plava','22.2',''),('crna','55.5',''),('riđokosa','55.00','') ;

insert into decko_zarucnica (decko,zarucnica) values (1,1);
insert into decko_zarucnica (decko,zarucnica) values (2,2),(3,3);

select * from prijatelj p ;
insert into svekar (ogrlica,asocijalno) values (1,'');
insert into prijatelj (treciput,ekstroventno,svekar) values ('2020-04-30','',1);
select * from svekar s ;
select * from brat;

insert into brat(ogrlica,asocijalno,neprijatelj) values(4,'',1);
delete from brat where ogrlica!=14;




