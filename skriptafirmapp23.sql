select * from smjer; 

update smjer set trajanje=130
where sifra=1;

update smjer set trajanje=130, certifikat =true 
where sifra=2;

update smjer set cijena=1000
where sifra=1;

update smjer set cijena=cijena*0.9;

update smjer set cijena=cijena*1.1;

select * from osoba;

insert into osoba (ime,prezime,email) values ('Marko','M','m@m.com'),('Pero','P','p@p.com'),('Slavko','S','s@s.com');

delete from osoba where sifra>6;
