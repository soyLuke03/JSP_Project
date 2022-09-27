Create table Users(
	name varchar(30),
	userName varchar(30),
	passWord varchar(30),
	address varchar(30),
	phoneNumber varchar(9),
	email varchar(30),
	id varchar(9),
	
	constraint PK_UserName primary key (userName)
);


Create table Admins(
	userName varchar(30),
	
	constraint PK_UserName primary key (userName),
	constraint FK_UserName foreign key (userName) references Users(userName) on delete cascade
);


insert into Users values ('Antonio Gonzalez Luque','IamLuke','QwErTy_03',null,null,'luquelectronico13@gmail.com','001');
insert into Users values ('Usuario De Pruebas','DummyUser','DummyUser_00',null,null,'DummyUser@gmail.com','000');

insert into Admins values ('IamLuke');



create table Shop(
	idItem int(5),
	nameItem varchar(30),
	priceItem decimal(10,2),
	stockItem int(5),
	
	constraint PK_IdItem primary key (idItem)
);


create table Sells(
	idItem int(5),
	userName varchar(30),
	
	constraint PK_IdItemSells primary key (idItem, userName),
	constraint FK_UserNameSells foreign key (userName) references Users(userName) on delete cascade,
	constraint FK_IdItemSells foreign key (idItem) references Shop(idItem) on delete cascade
);

insert into Shop values (1,'Water bottle',0.80,20000);
insert into Shop values (2,'Water bottle 1L',2.500,20000);
insert into Shop values (3,'Uranium',2799.99,5);
insert into Shop values (4,'Laptop Gaming',1400.50,567);
insert into Shop values (5,'Washing machine',479.99,230);
insert into Shop values (6,'Private Island',105000,3);



