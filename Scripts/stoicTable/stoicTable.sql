create table lazyTable(
	id int primary key,
	noga varchar(11),
	kolanoId int,
	foreign key (kolanoId) references happyTable(id)
);

create table busyTable(
	id int primary key,
	reka varchar(11),
	lokiecId int,
	foreign key (lokiecId) references sadTable(id)
);

create table stoicTable(
	id int primary key,
	tors varchar(11)
);
create table jumpingTable(
	id int primary key,
	glowa varchar(11)
);

create table bossyTable(
	id int primary key,
	lewaRekaId int,
	prawaRekaId int,
	lewaNogaId int,
	prawaNogaId int,
	glowaId int,
	foreign key (lewaRekaId) references lazyTable(id),
	foreign key (prawaRekaId) references busyTable(id),
	foreign key (lewaNogaId) references stoicTable(id),
	foreign key (prawaNogaId) references jumpingTable(id),
	foreign key (glowaId) references sadTable(id)
);