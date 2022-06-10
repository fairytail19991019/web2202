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
    `hot` boolean,
    `content` varchar(255),
    `image` varchar(255) DEFAULT NULL,
    `hits`  varchar(32) DEFAULT NULL,
    foreign KEY(`category_id`) references `kz_category`(`id`)
);
insert into `kz_class` values(1,10,'前端开发',true,'前端开发前端3213开发',NULL,'10000');
insert into `kz_class` values(2,10,'前端开发',true,'前端开123发132前端开发',NULL,'20000');
insert into `kz_class` values(3,10,'前端开发',true,'前端开发前端3213开发前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发32132前端开发前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发213213前端开发前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发前321端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发123213123前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发前3123端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发231123前端开发前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端端开123123端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端123213开端3发213前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端213开发开发前端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发213前321123端开发',NULL,'40000');
insert into `kz_class` values(null,10,'前端开发',true,'前端开发前端开发',NULL,'40000');
insert into `kz_class` values(null,20,'软件测试',false,'软件213测312试测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件312321测试试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件312测试试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测321试件件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件321测试软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件3213测试软件软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件3测123123试软件试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试软件试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件122132测试软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件13测123试软试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测213试件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件123测试软试件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测123123试软软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试软测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件123123测试3123件软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试123123试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试12312软试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试213123测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试123123软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试软测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试12312软件试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试3213软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试软测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测试21312软123123件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测12321试软测试软件测试',NULL,'30000');
insert into `kz_class` values(null,20,'软件测试',false,'软件测312试软件测试软件测试',NULL,'30000');
insert into `kz_class` values(null,30,'英语',false,'英语英语12321英语英英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语123英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语12312英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语英21312语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语12312312123英语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英123123语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英212313语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语213123英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语英21312语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英12312语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,30,'英语',false,'英语英123213语英语英语英语',NULL,'23000');
insert into `kz_class` values(null,40,'java',true,'jav1啊实打实的3vajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'jav javajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'jav啊实打实大师vajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajava213javajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'jaad发发呆java',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'java好多个ajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavaj213avajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javaj戚薇戚薇戚薇ajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'微热腾腾',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javaja气温气温vajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'梵蒂冈地方个',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'java东方红梵蒂冈地方个ajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'梵蒂冈恢复恢复规划',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'焚膏继晷好几个号结构化',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'分割江湖救急分割',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'让她也突然有人同意',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,40,'java',true,'javajavajavajavajava',NULL,'30001');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExc和感觉不错VBelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'程序VB和',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'是否是大法官',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'上的梵蒂冈地方个',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'阿萨德股份恢复规划',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'啊实打实的撒多',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'是发送到发送到方式',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'捱三顶五热若',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');
insert into `kz_class` values(null,50,'Excel',false,'ExcelExcelExcelExcel',NULL,'78000');