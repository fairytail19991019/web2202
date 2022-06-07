drop database if exists kz;
create database kz CHARSET=UTF8;
use kz;
create table kz_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(16)
);
insert into kz_user values(1,'张三','123456','126@qq.com','15878942654');