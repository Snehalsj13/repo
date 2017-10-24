CREATE TABLE User(
	username VARCHAR(255) primary key not null ,
	password VARCHAR(20) not null,
	accesslevel varchar(50),
	company VARCHAR(100) unique,
	country VARCHAR(100) unique,
	email VARCHAR(320) not null,
	contactno VARCHAR(100),
	hashkey VARCHAR(100),
	isActive Bit(1),
	profilepicture longblob
	);
	
CREATE TABLE inventory(
	inventoryid VARCHAR(255) primary key auto_increment,
	inventoryname VARCHAR(255) ,
	numberofitems VARCHAR(100),
	location varchar(100),
	createdby varchar(100),
	lastupdatedby varchar(100),
	company VARCHAR(100),
	country VARCHAR(100),
	foreign key (createdby) references user(username),
	foreign key (lastupdatedby) references user(username)
	);
	
create table inventoryitem (
	itemid varchar(50) primary key,
	inventoryid VARCHAR(255),
	foreign key (inventoryid) references inventory(inventoryid),
	itemname VARCHAR(150),
	Description VARCHAR(250),
	itemgroup VARCHAR(100),
	quantity varchar(50),
	Location VARCHAR(100),
	unitofmeasure VARCHAR(50),
	costperunit VARCHAR(50),
	status VARCHAR(14),
	createddate VARCHAR(20),
	Expirationdate VARCHAR(20),
	image longblob
);

