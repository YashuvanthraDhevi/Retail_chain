-- Phase 1

-- create database
create database RetailProject;
use RetailProject;

-- create tables
create table Transactions(
customer_id varchar(20),
trans_date varchar(20),
tran_amount int);

create table Response(
customer_id varchar(20) primary key,
response int);

-- load data into tables

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
into table Transactions
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Response.csv'
into table Response
fields terminated by ','
lines terminated by '\n'
ignore 1 rows;

select * from transactions;
select * from response;

-- Phase 2

