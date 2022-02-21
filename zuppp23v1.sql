insert into zupan (ime,prezime) values ('marko','m'),('slavko','s'),('pero','p');
select * from zupan;

INSERT INTO zupanija (naziv,zupan) VALUES ('osjeèka','1'),('zagrebacka',2),('višnjevaèka','3');

select * from zupanija;

insert into opcina (zupanija,naziv) values (2,'petrijevci'),(2,'samatovci'),(2,'bizovac'),(3,'klokocevac'),(3,'klisa'),(4,'drava'),(4,'sava');

select * from opcina;


insert into mjesto (naziv) values ('vis'),('bis'),('klis'),('dis'),('mis');

select * from mjesto;

update mjesto set naziv='višnjevac' where sifra=1;

update mjesto set opcina=2 where sifra=2;

delete from opcina where sifra=4;
delete from opcina where sifra=1;