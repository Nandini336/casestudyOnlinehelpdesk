CREATE TABLE register
(
 userID INT  identity PRIMARY KEY NOT NULL,
 FIRSTNAME VARCHAR(50) NOT NULL,
 LASTNAME VARCHAR(50) NOT NULL,
 USERNAME VARCHAR(50) NOT NULL,
 PASSWORD VARCHAR(50) NOT NULL,
 RETYPE_PASSWORD VARCHAR(50) NOT NULL,
 EMAIL_ADDRESS VARCHAR(50) NOT NULL,
 DEPARTMENT  VARCHAR(50) NOT NULL,
 SEMSTER INT NOT NULL,
 ADDRESS VARCHAR(100) NOT NULL,
 MOBILE_NO DECIMAL(10,0) NOT NULL,
 GENDER VARCHAR(50) NOT NULL,

)

insert into register 
values
(1,'Nandini','nandu123'),
(2,'Pallavi','pallu123')

select * from 

CREATE TABLE adminLogin
(
 userID INT  PRIMARY KEY NOT NULL,
 UserName VARCHAR(50) NOT NULL,
 Password VARCHAR(50) NOT NULL
)

insert into adminLogin 
values
(1,'Harshitha','harshi123'),
(2,'Asha','asha123')

CREATE TABLE assigneeLogin
(
 userID INT  PRIMARY KEY NOT NULL,
 userName VARCHAR(50) NOT NULL,
 password VARCHAR(50) NOT NULL
)

drop table register

CREATE TABLE category
(
catid int identity primary key not null,
categories varchar(50)
)

CREATE TABLE depatment
(
deptid int identity primary key not null,
 departmentname varchar(50)
)

insert into depatment values
('Mechanical Engg'),
('Electrical Engg'),
('Chemical Engg'),
('Computer Engg'),
('Biotechnology'),
('Civil Engg'),
('Information & Technology'),
('Electronics & Communication')

select * from category
insert into category values
('Computer'),
('Labs'),
('unavailabilty of components'),
('Course')

create table request
(
userID int not null,
request varchar(200),
requestCategory varchar(50),
requestDept varchar(50) ,
time datetime,
solution varchar(100)
)
select * from adminLogin
create table adminlogin
(
userid int identity primary key not null,
userName varchar(50) not null,
password varchar(50) not null
)
drop table request 
SELECT * FROM [request]  where solution is null order by time desc

CREATE TABLE assigneeLogin
(
 userID INT  identity PRIMARY KEY NOT NULL,
 FirstName VARCHAR(50) NOT NULL,
 LastName VARCHAR(50) NOT NULL,
 UserName VARCHAR(50) NOT NULL,
 PASSWORD VARCHAR(50) NOT NULL,
 RETYPE_PASSWORD VARCHAR(50) NOT NULL,
 EMAIL_ADDRESS VARCHAR(50) NOT NULL,
 DEPARTMENT  VARCHAR(50) NOT NULL,
 MOBILE_NO DECIMAL(10,0) NOT NULL,
 dob date
 )
 select * from register

 alter table assigneeLogin drop column mobile_no

 drop table forgotPswd
)

create table forgotPswd
(
fid int identity primary key not  null,
UserName varchar(50),
Email_address varchar(50),
reset varchar (50)
)

select * from assigneeLogin