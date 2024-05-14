create database SQL_Hindeline
use SQL_Hindeline

select * from Andmed

-- 1. �lesanne
alter table Andmed
add Id int identity(1, 1) primary key 

-- 2. �lesanne
alter table Andmed
alter column Nimi nvarchar(25)

alter table Andmed
alter column Linn nvarchar(25)

alter table Andmed
alter column Aadress nvarchar(30)

alter table Andmed
alter column Telefon nvarchar(12)

alter table Andmed
alter column Sugu varchar(1)

-- 3. �lesanne
update Andmed
set Linn = replace(replace(Linn, 'P?rnu', 'P�rnu'), 'p?rnu', 'p�rnu')
where Linn like '%P?rnu%' or Linn like '%p?rnu%';

-- 4. �lesanne
select Nimi
from Andmed
where Nimi Like '%k%'

-- 5. �lesanne
select * from Andmed
where Nimi is null

-- 6. �lesanne
select * from Andmed
where Sugu = 'M' and Linn = 'P�rnu'

-- 7. �lesanne
select * from Andmed
where Aadress is null

-- 8. �lesanne
select * from Andmed
where Telefon is null

-- 9. �lesanne
select * from Andmed
where Palk = 0

-- 10. �lesanne
select * from Andmed
where Palk = 0 or Palk is null

-- 11. �lesanne
select * from Andmed
where Linn like '%-%'

-- 12. �lesanne
select * from Andmed
where S_nniaeg between '1982-01-01' and '1992-01-01'

-- 13. �lesanne
select * from Andmed
where S_nniaeg < '1900-12-31'

-- 14. �lesanne
select top 10 * from Andmed
order by S_nniaeg desc

-- 15. �lesanne
select sum(convert(int, Palk)) as Palgafond from Andmed

-- 16. �lesanne
select Linn, sum(convert(int, Palk)) as Palgafond from Andmed
group by Linn