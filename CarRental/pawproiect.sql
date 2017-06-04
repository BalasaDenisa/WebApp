create database pawProiect;
use pawProiect;

create table Users(
U_id int not null auto_increment,
username varchar(100) not null,
Upassword varchar(100) not null,
email varchar(100) not null,
first_name varchar(100) not null,
last_name varchar(100) not null,
role varchar(100) not null,
address varchar(100) not null,
zipcode int not null,
city varchar(100) not null,

primary key(U_id)
);

create table Payment(
P_id int not null auto_increment,
Pdate timestamp not null,
method varchar(100) not null,
description varchar(100) not null,
Pstatus varchar(100) not null,
Uid int not null,

primary key(P_id),
foreign key(Uid) references Users(U_id)
);

create table Vehicle(
V_id int not null auto_increment,
model varchar(100),
Vtype varchar(100),
made varchar(100),
Vyear int ,
mileage int ,
location varchar(100),
no_of_pas int,
hourly_rate time,
daily_rate timestamp,

primary key(V_id)
);

create table RentalTransaction(
RT_id int not null auto_increment,
start_date timestamp not null,
end_date timestamp not null,
address varchar(100) not null,
zipcode int not null,
city varchar(100) not null,
price int not null,
Rstatus varchar(100) not null,
Uid int,
Vid int,
Pid int,

primary key(RT_id),
foreign key(Uid) references Users(U_id),
foreign key(Vid) references Vehicle(V_id),
foreign key(Pid) references Payment(P_id)
);

create table LOGS(
L_id int not null auto_increment,
actions varchar(100) not null,
transactions varchar(100) not null,
vehicle_freq varchar(100) not null,
Uid int not null,

primary key(L_id),
foreign key(Uid) references Users(U_id)
);

insert into Users values(
1,
'admin',
'admin',
'admin@gmail.com',
'Admin',
'Denisa',
'admin',
'bvd Oltenia',
'09355',
'Craiova'
);

insert into Users values(
4,
'denisa',
'denisa',
'denisa@gmail.com',
'Balasa',
'Denisa',
'user',
'str. fghvh',
'09115',
'Craiova'
);

insert into vehicle values(
3,
'BMW 550i',
'Sedan',
'Made in 2013',
2015,
123,
'Bucuresti',
4,
'09:12:10',
'2017-01-01'
);
