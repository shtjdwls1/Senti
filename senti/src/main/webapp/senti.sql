create table userinfo(
id varchar2(10) primary key,
pw varchar2(10) not null,
nick varchar2(10) not null,
gender varchar2(10) not null,
high varchar2(10),
low varchar2(10),
coverpath varchar2(100)
);

drop table userinfo;

insert into userinfo
values('test', 'test', 'test', 'test', 'test', 'test', 'test');

insert into userinfo
values('test2', 'test2', 'test2', 'test2','','','');

select * from USERINFO;

delete from userinfo where pw = '123';

create table songinfo(
keys varchar2(4) primary key,
title varchar2(20) not null,
singer varchar2(20) not null,
genre varchar2(10),
bpm number(3),
lyrics varchar2(4000),
path varchar2(100),
mrpath varchar2(100),
albumname varchar2(100),
albumimg varchar2(1000),
release varchar2(10) 
);

drop table songinfo;
insert into songinfo
values('test', 'test', 1, 'test', 'test', 1, 'test', 'test', 'test', 'test');

select * from songinfo;

create table playlist(
keys varchar2(20),
id varchar2(10) not null,
pname varchar2(20) not null
);

select * from playlist;

alter table playlist
add foreign key (id)
references songinfo(keys);

drop table playlist;

create table range(
keys varchar2(20) primary key,
high_range varchar2(5) not null,
low_range varchar2(5) not null,
frequent varchar2(5) not null,
);