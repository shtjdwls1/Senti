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
times number(4) not null,
singer varchar2(20) not null,
genre varchar2(10) not null,
bpm number(3),
lyrics varchar2(4000) not null,
path varchar2(100) not null,
mrpath varchar2(100) not null,
cover varchar2(1000)
);

insert into songinfo
values('test', 'test', 1, 'test', 'test', 1, 'test', 'test', 'test', 'test');

select * from songinfo;

create table playlist(
keys varchar2(20) primary key,
id varchar2(20) not null,
pname varchar2(20) not null,
);

create table range(
keys varchar2(20) primary key,
high_range varchar2(5) not null,
low_range varchar2(5) not null,
frequent varchar2(5) not null,
);