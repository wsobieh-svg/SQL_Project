-- create database
create database store 
on primary
(
name = school_data,
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\school_data.mdf',
size = 50mb,
maxsize = 500mb,
filegrowth = 10mb
)
log on
(
name = school_log,
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\school_log.ldf',
size = 20mb,
maxsize = 200mb,
filegrowth = 5mb
)
-- create schema
use store
go
create schema sales
create schema production
-- create table
create table customers(
customer_id int identity(1,1) primary key,
firstname varchar (20) not null,
lastname varchar (20) not null,
phone char (11) not null unique check(len(phone) = 11),
email varchar (20) unique not null,
street varchar (20) not null,
city varchar (20) not null,
statr varchar (20) not null,
zip_code char (5) not null check (len(zip_code) = 5)
)
drop database wael;
alter table customers
drop column street;
use store
go
exec sp_rename 'customers.statr','state','column';
alter table customers
add age int;
insert into customers
values ('wael','sobieh','12345678910','w@w','cairo','sharq','12345','35');

