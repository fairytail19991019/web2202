set names utf8;
drop database if exists kz;
create database kz CHARSET=UTF8;
use kz;
create table `kz_user`(
    `uid` INT PRIMARY KEY AUTO_INCREMENT,
    `uname` VARCHAR(32),
    `upwd` VARCHAR(32),
    `email` VARCHAR(64),
    `phone` VARCHAR(16)
);
insert into `kz_user` values(1,'张三','123456','126@qq.com','15878942654');
insert into `kz_user` values(2,'李四','123456','1245@qq.com','15873494265');
create table `kz_category`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `category_name` VARCHAR(30) NOT NULL
);
insert into `kz_category` values(10,'前端开发');
insert into `kz_category` values(20,'软件测试');
insert into `kz_category` values(30,'英语');
insert into `kz_category` values(40,'java');
insert into `kz_category` values(50,'Excel');

CREATE TABLE `kz_class`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `category_id` INT,
    `title` varchar(255) NOT NULL,
    `content` varchar(255),
    `image` varchar(255) DEFAULT NULL,
    `hits`  varchar(32) DEFAULT NULL,
    foreign KEY(`category_id`) references `kz_category`(`id`)
);
insert into `kz_class` values(1,10,'前端开发','前端开发前端开发前端开发',NULL,'10000');
insert into `kz_class` values(2,10,'前端开发','前端开发前端开发前端开发',NULL,'20000');
insert into `kz_class` values(3,10,'前端开发','前端开发前端开发前端开发',NULL,'40000');
insert into `kz_class` values(4,20,'软件测试','软件测试软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,30,'英语','英语英语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,40,'java','javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,50,'Excel','ExcelExcelExcelExcel',NULL,'78000');