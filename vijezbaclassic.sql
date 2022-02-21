select a.naziv as grupa, b.naziv as smjer
from grupa a inner join smjer b 
on a.smjer=b.sifra;

select * from smjer;

select * from grupa;

update grupa set naziv='JP23' where sifra=3;

insert into smjer  (naziv) values ('PHPprog');

insert into grupa (naziv,smjer) values ('PP24',19);

select a.naziv as smjer ,b.naziv as grupa
from smjer a left join grupa b 
on b.smjer=a.sifra;


select a.naziv as grupa, b.naziv as smjer,
a.predavac 
from grupa a inner join smjer b 
on a.smjer=b.sifra;

insert into osoba (ime,prezime) values ('Marija','Zimska');
select * from osoba;
update osoba set ime='Barica' where sifra=2;
insert into predavac (osoba) values (1);

select *  from grupa;
select  * from predavac;
update predavac set osoba=2 where sifra=2;
update grupa set predavac=1 where sifra=1;
update grupa set predavac=2 where sifra=3;

select * from polaznik;
select * from clan;
select * from grupa;
insert into polaznik (osoba) values (1);
insert into clan (grupa,polaznik) values (2,1);

select a.naziv as grupa, b.naziv as smjer,
concat(d.ime,'',d.prezime) as predavac, 
concat(g.ime,'',g.prezime) as polaznik 
from grupa a inner join smjer b 
on a.smjer=b.sifra
inner join predavac c on
a.predavac=c.sifra 
inner join osoba d on 
d.sifra=c.osoba 
inner join clan e 
on e.grupa=a.sifra
inner join polaznik f 
on f.sifra=e.polaznik 
inner join osoba g
on g.sifra=f.osoba
;


select a.ime, a.prezime 
from osoba a inner join polaznik b on a.sifra = b.osoba 
inner join clan c on c.polaznik =b.sifra 
inner join grupa d on d.sifra=c.grupa 
inner join smjer e on e.sifra=d.smjer 
where d.naziv='PP24'

select * from autor;
select * from katalog;
select * from mjesto ;
select b.naslov
from autor a inner join katalog b on a.sifra=b.autor 
where a.ime='august' and a.prezime='Šenoa';
;
select * from izdavac ;
select * from katalog ;

select d.naziv
from mjesto d inner join katalog e on d.sifra =e.mjesto 
inner join izdavac f on f.sifra=e.izdavac 
where f.naziv not like 'H%';

select a.productName, b.productLine 
from products a inner join productlines b 
on a.productLine = b.productLine 
;
