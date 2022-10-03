Create table Users(
	name varchar(30) not null,
	userName varchar(30) not null,
	passWord varchar(30) not null,
	address varchar(30) not null,
	phoneNumber varchar(9),
	email varchar(30) not null,
	id varchar(9) not null,
	
	constraint PK_UserName primary key (userName)
);

insert into Users values ('Antonio Gonzalez Luque','IamLuke','QwErTy_03','Micasa',null,'luquelectronico13@gmail.com','001');
insert into Users values ('Usuario De Pruebas','DummyUser','DummyUser_00','sucasa',null,'DummyUser@gmail.com','000');





create table Item(
	idItem int(5) not null auto_increment,
	nameItem varchar(30) not null,
	priceItem decimal(10,2) not null,
	stockItem int(5) not null,
	category varchar(30),
	
	constraint PK_IdItem primary key (idItem)
);

insert into Item values (1,'Water bottle',0.80,20000, 'Drinks');
insert into Item values (2,'Water bottle 1L',2.500,20000, 'Drinks');
insert into Item values (3,'Uranium',2799.99,5, 'Materials');
insert into Item values (4,'Laptop Gaming',1400.50,567,'Energy');
insert into Item values (5,'Washing machine',479.99,230,'Appliances');
insert into Item values (6,'Private Island',105000,3,null);
insert into Item values (7,'Country of US',10500000,3,null);



