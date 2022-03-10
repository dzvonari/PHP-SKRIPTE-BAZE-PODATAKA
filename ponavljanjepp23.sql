DROP database if exists ponavljanjepp23;
CREATE database ponavljanjepp23;
use ponavljanjepp23;
create table osoba (
	sifra int not null primary key auto_increment,
	ime varchar (30) not null,
	prezime varchar (40) not null,
	rodjenje datetime
);

create table sat (
	sifra int not null primary key auto_increment,
	naziv varchar(50) not null,
	model varchar(50) not null,
	cijena decimal (18,2),
	osoba int not null
);

alter table sat add foreign key (osoba) references osoba(sifra); 

insert into osoba (ime,prezime,rodjenje) values ('Martina','O''Hara','1985-05-18');

select * from osoba;

insert into osoba (ime, prezime,rodjenje) values ('Josip','Jo','1982-02-25'),('Daliborka','Dali','1990-01-07');


insert into sat (naziv,model,osoba) values ('casio','ca2',1);
insert into sat (naziv,model,osoba) values ('rolex','ro2',1);
insert into sat (naziv,model,osoba) values ('casio','ca1',2);

select * from sat;

select a.ime, b.naziv
from osoba a 
inner join sat b where a.sifra=b.osoba;

delete from sat where osoba=1;

select * from sat;

select * from osoba;

delete from osoba where sifra=1;