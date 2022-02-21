select * from autor;
select * from autor where datumrodenja is null;

update autor set datumrodenja='1983-02-07' where sifra=3;

select * from autor where ime like 'denis';

select * from izdavac;

select * from izdavac where naziv like '%d.o.o.%' or naziv like '%d.oo%' or naziv like '%do.o%';