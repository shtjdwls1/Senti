select * from tabs;
create table userinfo(
id varchar2(50) primary key,
pw varchar2(10) not null,
nick varchar2(50) not null,
gender varchar2(10) not null,
high varchar2(10),
low varchar2(10),
stability number(10,5),
coverpath varchar2(100)
); --o

select * from USERINFO;
insert into userinfo('id','pw','nick','gender') values('wjdeogus','12','danny','man');
delete from userinfo where pw = '123';

create table songinfo(
keys varchar2(20) primary key,
title varchar2(50) not null,
singer varchar2(50) not null,
genre varchar2(40) not null,
lyrics varchar2(4000),
times varchar2(10),
albumimg varchar2(1000),
albumname varchar2(100),
path varchar2(100),
mrpath varchar2(100),
gender varchar2(10) 
);

select * from songinfo;

select songinfo.keys, title, singer, albumimg
from songinfo, PLAYLIST
where pname like '테스트' and songinfo.keys = playlist.keys;

create table genreinfo(
keys varchar2(20),
genre varchar2(40),
CONSTRAINT genreinfo_keys_fk FOREIGN KEY(keys) REFERENCES songinfo(keys)
);

select * from genreinfo;

create table songrange(
keys varchar2(20),
high_range number(8,4),
low_range number(8,4),
frequent number(8,4),
CONSTRAINT songrange_keys_fk FOREIGN KEY(keys) REFERENCES songinfo(keys)
);

select * from songrange;

create table playlist(
id varchar2(50),
keys varchar2(20),
pname varchar2(50),
CONSTRAINT playlist_id_fk FOREIGN KEY(id) REFERENCES userinfo(id),
CONSTRAINT playlist_keys_fk FOREIGN KEY(keys) REFERENCES songinfo(keys)
);

insert into playlist('id','keys') values('wjdeogus','8229565');
select * from playlist;
drop table playlist cascade constraints;

create table recommend(
id varchar2(10) ,
keys varchar2(20),
CONSTRAINT recommend_id_fk FOREIGN KEY(id) REFERENCES userinfo(id),
CONSTRAINT recommend_keys_fk FOREIGN KEY(keys) REFERENCES songinfo(keys)
);

select * from recommend;

create table non_recommend(
id varchar2(50) ,
keys varchar2(20),
CONSTRAINT non_recommend_id_fk FOREIGN KEY(id) REFERENCES userinfo(id),
CONSTRAINT non_recommend_keys_fk FOREIGN KEY(keys) REFERENCES songinfo(keys)
);

select * from non_recommend;

create table compassinfo(
compass varchar2(5) not null,
frequeny number(8,4) not null
);

select * from compassinfo;

drop table userinfo cascade constraints;
drop table songinfo cascade constraints;
drop table playlist;
drop table range;