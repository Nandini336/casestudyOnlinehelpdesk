--Creating new database

create database OHD

--**********************************************************************************
--create new account for register
create proc spregister
@FIRSTNAME VARCHAR(MAX),
@LASTNAME VARCHAR(MAX),
@USERNAME VARCHAR(MAX),
@PASSWORD VARCHAR(MAX),
@RETYPE_PASSWORD VARCHAR(MAX),
@EMAIL_ADDRESS VARCHAR(MAX),
@DEPARTMENT VARCHAR(MAX),
@SEMSTER INT,
@ADDRESS VARCHAR(MAX),
@MOBILE_NO DECIMAL ,
@GENDER VARCHAR(MAX),
@result int out
as
begin
insert into register values(
@FIRSTNAME ,@LASTNAME ,@USERNAME,@PASSWORD ,@RETYPE_PASSWORD,@EMAIL_ADDRESS,@DEPARTMENT ,@SEMSTER,@ADDRESS ,@MOBILE_NO ,@GENDER)
if(@@rowcount>0)
	set @result=1
else
	set @result=0
end
--**********************************************************************************
--create new account for register
create proc sassignee

@FIRSTNAME VARCHAR(MAX),
@LASTNAME VARCHAR(MAX),
@USERNAME VARCHAR(MAX),
@PASSWORD VARCHAR(MAX),
@RETYPE_PASSWORD VARCHAR(MAX),
@department VARCHAR(MAX),
@EMAIL_ADDRESS VARCHAR(MAX),
@result int out
as
begin
insert into assigneeLogin values(
@FIRSTNAME ,@LASTNAME ,@USERNAME,@PASSWORD ,@RETYPE_PASSWORD,@EMAIL_ADDRESS,@department)
if(@@rowcount>0)
	set @result=1
else
	set @result=0
end
--************************************************************************************************

--change password for student

create proc sp_ChangePswd
@username varchar(10),@OldPassword varchar(50),@NewPassword varchar(50),@RetypePassword varchar(50),
@status int out
as
begin
if exists (select * from register where Password=@OldPassword and USERNAME=@username)
begin
update register set Password=@RetypePassword where USERNAME=@username
set @status=1
end
else
set @status=0
end

*************************************************************************************************