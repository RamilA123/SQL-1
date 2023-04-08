create database Course
use Course

create table Users(
Id int,
Name nvarchar(50),
Surname nvarchar(50),
Age int,
Email nvarchar(50),
IsDeleted bit default 0
)

create table Educations(
Id int,
Name nvarchar(50)
)

create table Teachers(
Id int,
FullName nvarchar(50),
Age int,
Email nvarchar(50),
Address nvarchar(50),
IsDeleted bit default 0
)

insert into Users(Id,Name,Surname,Age,Email)
values (1,'Ramil','Allahverdiyev',19,'ramil78@gmail.com'),
(2,'Ulfet','Mirzeyev',20,'ulfet_54@gmail.com'),
(3,'Imran','Haqverdiyev',25,'imran12@yahoo.com'),
(4,'Selim','Agamaliyev',17,'selim54@code.edu.az'),
(5,'Yunis','Balakisiyev',23,'yunis67@mail.ru'),
(6,'Elcan','Musali',15,'elcan_123@gmail.com')

insert into Educations(Id,Name)
values (1,'Primary'),
(2,'Secondary'),
(3,'Bachelor'),
(4,'Master'),
(5,'PhD')

insert into Teachers(Id,FullName,Age,Email,Address)
values(1,'Kamran Ebilov',34,'kamran56@gmail.com','Azadliq'),
(2,'Sevinc Eliyeva',30,'sevinc23@yahoo.com','28 May'),
(3,'Huseyn Isgenderzade',40,'huseyn_78@mail.ru','Nesimi'),
(4,'Cabir Memmedov',36,'cabir45@gmail.com','Ehmedli'),
(5,'Bahar Ceferova',28,'bahar903@code.edu.az','Memar Ecemi')

update Users set IsDeleted = 1 where Id > 3
update Teachers set IsDeleted = 1 where Id > 2

select * from Users
select * from Educations
select * from Teachers

-- 1 Query - butun userlerin siyahisini cixarmaq
select * from Users
-- 2 Query - yasi 20'den kicik olan userlerin siyahisini cixarmaq
select * from Users where Age < 20
-- 3 Query - Userlerin sayini gosterin
select count(*) as 'UserCount' from Users
-- 4 Query - isDeleted true olan mellimlerin FullName, Age, Address-ni gosterin
select FullName, Age, Address from Teachers where isDeleted = 'true'
-- 5 Query - yasi 30'dan yuxari olan muellimlerin sayini gosterin
select count(*) as 'TeacherCount' from Teachers where Age > 30