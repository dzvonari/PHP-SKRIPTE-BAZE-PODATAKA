select 2;

select naziv,cijena from smjer; 

select ime as osoba, oib as zajebancija from osoba;

select ime, 35 as temperatura, 2 as komp, 'Osijek' as selo
from osoba;

select lower(ime), upper (left(ime,3)) from osoba;

select * from osoba where sifra<>5;

select * from osoba where sifra>=2 and sifra <=5;
select * from osoba where sifra=2 or sifra=7;
select * from osoba where ime!='Pero';

select * from osoba where ime like 'L%';

select * from osoba where ime like '%di%';



