-- Designing and Implement a Bank Database

-- Database
CREATE DATABASE IF NOT EXISTS my_bank_db;

-- USE
USE my_bank_db;

-- Create Customer Table 
CREATE TABLE customer (
customer_id int primary key auto_increment,
first_name varchar(150) not null,
last_name varchar(150) not null,
city text not null,
state text not null
);

-- Create Branch Table
CREATE TABLE branch (
branch_id int primary key auto_increment,
branch_name text not null,
city text not null,
state text not null
); 

-- Create account Table 
CREATE TABLE account(
account_id int primary key auto_increment,
customer_id int not null,
branch_id int not null,
account_type text not null,
balance int not null,

constraint foreign key(customer_id) references customer(customer_id),
constraint foreign key(branch_id) references branch(branch_id)
);

-- Create Transaction Table
CREATE TABLE transaction (
transaction_id int primary key auto_increment,
account_id int not null,
transaction_date date not null,
amount float not null,

constraint foreign key(account_id) references account(account_id)
); 


-- Populating the customer database 
SELECT *
FROM customer;

insert into customer (first_name, last_name, city,state)
Values ("John", "Doe", "New_York", "NY");

insert into customer (first_name, last_name, city,state)
Values ("Jane", "Doe", "New_York", "NY");

insert into customer (first_name, last_name, city,state)
Values ("Bob", "Smith", "San_Francisco", "CA");

insert into customer (first_name, last_name, city,state)
Values ("Alice", "Johnson", "San_Francisco", "CA");

insert into customer (first_name, last_name, city,state)
Values ("Michael", "Lee", "Los_Angeles", "CA");

insert into customer (first_name, last_name, city,state)
Values ("Jennifer", "Wang", "Los_Angeles", "CA");

-- Populating the branch database 
SELECT *
FROM branch;

insert into branch (branch_name,city,state)
Values ("Main", "New_York", "NY");


insert into branch (branch_name,city,state)
Values ("Downtown", "San_Francisco", "CA");

insert into branch (branch_name,city,state)
Values ("West La", "Los_Angeles", "CA");

insert into branch (branch_name,city,state)
Values ("East LA", "Los_Angeles", "CA");

insert into branch (branch_name,city,state)
Values ("Uptown", "New_York", "NY");

insert into branch (branch_name,city,state)
Values ("Fiancial District", "San_Francisco", "CA");

insert into branch (branch_name,city,state)
Values ("Midtown", "New_York", "NY");

insert into branch (branch_name,city,state)
Values ("South Bay", "San_Francisco", "CA");

insert into branch (branch_name,city,state)
Values ("Downtown", "Los_Angeles", "CA");

insert into branch (branch_name,city,state)
Values ("Chinatown", "New_York", "NY");

insert into branch (branch_name,city,state)
Values ("Marina", "San_Francisco", "CA");

insert into branch (branch_name,city,state)
Values ("Beverly Hills", "Los_Angeles", "CA");

insert into branch (branch_name,city,state)
Values ("Brooklyn", "New_York", "NY");

insert into branch (branch_name,city,state)
Values ("North Beach", "San_Francisco", "CA");

insert into branch (branch_name,city,state)
Values ("Pasadena", "Los_Angeles", "CA");


-- Populating the account database 
SELECT *
FROM account;

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("1", "5","checking", "1000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("1", "5","savings", "5000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("2", "1","checking", "2500");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("2", "1","saving", "10000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("3", "2","checking", "7500");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("3", "2","savings", "15000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("4", "8","checking", "5000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("4", "8","saving", "20000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("5", "14","checking", "10000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("5", "14","saving", "50000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("6", "2","checking", "5000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("6", "2","saving", "10000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("1", "5","credit card", "-500");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("2", "1","credit card", "-1000");

INSERT INTO account (customer_id,branch_id,account_type,balance)
VALUES("3", "2","credit card", "-2000");


-- Populating the transction database 
SELECT *
FROM transaction;

INSERT INTO transaction (account_id,transaction_date,amount)
values ("1", "2022-01-01","-500");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("1", "2022-01-02","-250");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("2", "2022-01-03","1000");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("3", "2022-01-04","-1000");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("3", "2022-01-05","500");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("4", "2022-01-06","1000");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("4", "2022-01-07","-500");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("5", "2022-01-08","-2500");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("6", "2022-01-09","500");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("6", "2022-01-10","-1000");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("7", "2022-01-11","-500");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("7", "2022-01-12","-250");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("8", "2022-01-13","1000");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("8", "2022-01-14","1000");

INSERT INTO transaction (account_id,transaction_date,amount)
values ("9", "2022-01-15","500");

