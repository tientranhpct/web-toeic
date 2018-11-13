use `toeic-online`;

create table user (
	userid bigint not null primary key auto_increment,
    username varchar(255) not null,
    password varchar(255) not null,
    fullname varchar(255) not null,
    createddate timestamp
);

create table role (
	roleid int not null primary key,
    name varchar(100) not null
);

alter table user add column roleid int not null;
alter table user add constraint fk_user_role foreign key (roleid) references role (roleid);