create database Datadb
use Datadb
create table Userdata(Id int IDENTITY(1,1),Name varchar (25),Age int,E_mail varchar(320),Phone_no bigint,Username varchar(30)unique not null,Password varchar(16) not null)
drop table Userdata
select*from Userdata
insert into Userdata values('Praveen',22,'praveenswat007@gmail.com',6383658125,'PraveenSwat09','Praveen007?')
go
create proc Userdata_insert
@name varchar(25),
@age int,
@email varchar(320),
@phn bigint,
@uname varchar(30),
@pass varchar(16)
as begin 
insert into Userdata (Name,Age,E_mail,Phone_no,Username,Password) values(@name,@age,@email,@phn,@uname,@pass)

end
go
create proc Select_username
@un varchar(20)
as
begin
select count(*)from Userdata where Username=@un
end
go
CREATE PROCEDURE Select_pass
@un varchar(20)
AS
begin
select Password from Userdata where Username=@un
END