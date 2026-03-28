-- crate database
create database wael
on
primary
(
name = wael_data,
FILENAME ='C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\wael_data.mdf',
size = 10mb,
maxsize = 20mb,
filegrowth = 10mb
)
LOG ON
(
name = wael_log,
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\wael_log.ldf',
size = 20mb,
maxsize = 200mb,
filegrowth = 5mb
)
-- create schema
use wael
go
create schema sales
create schema production
-- create table
create table customers (
customer_id int identity(1,1) primary key,
firstname varchar(20) not null,
lastname varchar(20) not null,
phone char(11) unique not null check(len(phone)=11),
email varchar(20) not null unique,
street varchar(20) unique not null,
city varchar(20) not null,
state varchar(20) not null,
zip_code char(5) not null check(len(zip_code)=5),
);
alter table customers
add age int;
alter table customers
drop column state;
insert into customers
values ('wael','sobieh','12345678910','w@w','werew','alx','12345','35');
use store
go
select * from [Sample - Superstore]
update [Sample - Superstore]
set Customer_Name = 'wael'
where Customer_ID = 'CG-12520';

delete from [Sample - Superstore]
where Order_Date = '2016-06-12';

select * from [Sample - Superstore]
select Order_id,order_date,customer_id,customer_name from [Sample - Superstore]
select Order_id,order_date,customer_id,customer_name from [Sample - Superstore]
where Customer_Name = 'wael'or Customer_Name='Brosina Hoffman';

select * from [Sample - Superstore]
where Quantity >= 5;

select * from [Sample - Superstore]
where Quantity between 1 and 5;

select * from [Sample - Superstore]
where Customer_Name in ('wael','Brosina Hoffman' );

select * from [Sample - Superstore]
where Customer_Name like 'wa%';

select Quantity,count(quantity) as quantity_lol from [Sample - Superstore]
group by quantity
order by quantity desc;

select distinct customer_name from [Sample - Superstore]

select top 10 customer_name from [Sample - Superstore]

select top 10 * from [Sample - Superstore]

