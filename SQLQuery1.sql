create database hotel

create table Customer ( customer_id int primary key, customer_name varchar(20), customer_national_id 
int)

create table Room ( room_number int primary key, location varchar(20), customer_id int foreign key references
Customer(customer_id))

create table Orders ( orders varchar(20) primary key)

create table Department_Manager( department_id int, department_name varchar(20), manager_id int, manager_name 
varchar(20), manager_address varchar(50), manager_national_id int, manager_rate varchar(20), primary key 
(department_id, manager_id))

create table Employee ( employee_id int primary key, employee_name varchar(20), employee_address 
varchar(50), employee_national_id int, job varchar(20))

create table Customer_Employee( customer_id int foreign key references Customer(customer_id),
employee_id int foreign key references Employee(employee_id))

create table Customer_Orders( customer_id int foreign key references Customer(customer_id),
orders varchar(20) foreign key references Orders(orders))




