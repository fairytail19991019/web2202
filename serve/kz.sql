set names utf8;
drop database if exists kz;
create database kz CHARSET=UTF8;
use kz;
create table `kz_user`(
    `uid` INT PRIMARY KEY AUTO_INCREMENT,
    `uname` VARCHAR(32),
    `upwd` VARCHAR(32),
    `email` VARCHAR(64),
    `phone` VARCHAR(16),
    `head` VARCHAR(255)
);
insert into `kz_user` values(1,'张三','123456','126@qq.com','15878942654',null);
insert into `kz_user` values(2,'李四','123456','1245@qq.com','15873494265',null);
insert into `kz_user` values(3,'admin','123456','1245@qq.com','15257609076',null);

create table `kz_subject`(
    `kid` INT PRIMARY KEY AUTO_INCREMENT,
    `sname` VARCHAR(32),
    `icon` VARCHAR(32) DEFAULT NULL
);

insert into `kz_subject` values(1,"数学",null);
insert into `kz_subject` values(2,"语文",null);
insert into `kz_subject` values(null,"英语",null);
insert into `kz_subject` values(null,"物理",null);
insert into `kz_subject` values(null,"化学",null);
insert into `kz_subject` values(null,"政治",null);
insert into `kz_subject` values(null,"地理",null);
insert into `kz_subject` values(null,"生物",null);
insert into `kz_subject` values(null,"历史",null);


create table `kz_jiuke`(
    `gid` INT PRIMARY KEY AUTO_INCREMENT,
    `issold` boolean DEFAULT false,
    `title` VARCHAR(32),
    `desc` VARCHAR(32),
    `mai` INT,
    `price` INT,
    `oprice` INT,
    `tag` VARCHAR(16),
    -- `pic` VARCHAR(255) DEFAULT NULL,
    `subject_id` INT
);

insert into `kz_jiuke` values(1,false,'中考暴力作文写作','告别无话可说，就是那么一回事',5132,30,60,'爆款',2);
insert into `kz_jiuke` values(2,false,'传世名作初体验','文言文的魅力，用不同的打开方式',4262,30,60,null,2);
insert into `kz_jiuke` values(null,false,'人物之百态人生','见闻与传奇，聆听他们的故事',4262,0,30,'免费',2);
insert into `kz_jiuke` values(null,false,'看历史风云变','历史车轮滚滚，史家文采涛涛',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'识文体品佳作','千古名作,如何看懂其中的门道',4262,30,60.00,"火爆",2);
insert into `kz_jiuke` values(null,false,'品味诸子百家','百家争鸣的时代,大师说了什么',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'铭记美丽河山','游山玩水,托物言志',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'虚词上','重点讲解“之”“乎”“者”“也”等九个虚词',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'性格稳定的实词','形象的比喻和富有趣味型的例句帮助同学们掌握',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'比较变态的实词','总结最有效的方法使同学们有方法可循',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'文言文翻译','归纳文言文中的特殊句式',4262,30,60.00,"",2);
insert into `kz_jiuke` values(null,false,'集合上','学习函数的最重要前提，帮助你打好高中基础',4262,30,60.00,"火爆",1);
insert into `kz_jiuke` values(null,false,'集合下','金牌教练，帮你跨过初中高中数学分水岭',4262,0,60.00,"免费",1);
insert into `kz_jiuke` values(null,false,'函数的概念与表示','高效学习函数基本概念',4262,0,60.00,"免费",1);
insert into `kz_jiuke` values(null,false,'复合函数解析式求法','透析复杂函数基本概念',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'函数的单调性','掌握函数的重要性质单调性',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'单调性的应用','趣味讲解单调性运用',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'函数的奇偶性','举一反三，活学活用',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'函数的周期性','循序渐进学习函数周期性',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'函数的综合应用','5大技巧,7大视屏',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'指数及指数函数','运用函数基本知识解剖基本初等函数指数函数',4262,30,60.00,"",1);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'温度与标识','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'温度计使用方法','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长融化与凝固','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'汽化现象','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'长度和时间的测量','最基本的物理量可以衡量万物',4262,30,60.00,"",4);
insert into `kz_jiuke` values(null,false,'物质的变化与性质','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'走进化学实验室','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'构成物质的例子','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'化学元素','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'化学式和方程式','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'器质性制取','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'物质的变化与性质','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'物质的变化与性质','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'物质的变化与性质','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'物质的变化与性质','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'物质的变化与性质','物理变化与化学变化的区别',4262,30,60.00,"",5);
insert into `kz_jiuke` values(null,false,'神奇动物在哪里','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'谁偷窥了我的日常','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的名词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的冠词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的代词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的数词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的形容词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的动词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的易混淆动词辨析','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的副词','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'零点奇迹的宾语从句','神奇的动物，趣味的单词',4262,30,60.00,"",3);
insert into `kz_jiuke` values(null,false,'初中易错词汇','神奇的动物，趣味的单词',4262,30,60.00,"",3);

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
    `time` VARCHAR(32),
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `category_id` INT,
    `hot` boolean,
    `title` varchar(64),
    `image` varchar(64) DEFAULT NULL,
    `hits`  varchar(32) DEFAULT NULL,
    `index_img` varchar(64),
    `class_title` varchar(64),
    `teacher_head` varchar(64),
    `teacher` varchar(16),
    `teacher_introduce` varchar(64),
    `detail_img` varchar(64),
    foreign KEY(`category_id`) references `kz_category`(`id`)
);
INSERT INTO `kz_class` (`time`, `id`, `category_id`, `hot`, `title`, `image`, `hits`, `index_img`, `class_title`, `teacher_head`, `teacher`, `teacher_introduce`, `detail_img`) VALUES
(NULL, 1, 10, 1, 'WEB前端开发/0基础入门/新手小白适合/实操易上手', 'java(1)', '10000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 2, 10, 1, '前端开123发132前端开发', 'java(2)', '20000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 3, 10, 1, 'Web前端开发JavaScript高薪课堂', 'java(3)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 4, 10, 1, '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'java(4)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 5, 10, 1, 'WEB前端高级开发javascript/JS/ES6/vue/react/webpack/node/TS', 'java(5)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 6, 10, 1, '2022新版HTML+CSS零基础入学', 'java(6)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 7, 10, 1, '2022逆袭Web全栈开发（进阶）JS/ES6/JQuery/BootStrap | 职坐标', 'java(7)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 8, 10, 1, 'vue+ElementUI企业实战特训营【艾梯哎教育】', 'java(8)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 9, 10, 1, '2022 前端开发 HTML+CSS 宝典', 'java(9)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 10, 10, 1, '2022web前端开发最新技术（入门篇）Html/CSS/JS/H5/CS3/入门项目', 'java(10)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 11, 10, 1, 'C/C++入门到精通实战/Python/Golang-挑战年薪50万-六星教育', 'java(11)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 12, 10, 1, '2022 HTML+CSS零基础入学宝典', 'java(12)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 13, 10, 1, 'Web前端开发之仿淘宝图片左右切换【职坐标】', 'java(13)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
(NULL, 14, 10, 1, '【严选课程】前端全栈工程师精英班', 'java(14)', '40000', 'Q1', '2022逆袭web前端高级开发 | JS/React/VueJS/NodeJS框架实战', 'Q1-T', '职坐标-张云', '8年互联网/前端从业经验', 'Q1-1'),
('1655463527916', 15, 20, 0, '软件测试入门/0基础入门/新手小白适合/运营提升班', 'java(15)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 16, 20, 0, '软件测试零基础/面试/接口/压力/自动化/性能/', 'java(16)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 17, 20, 0, '【松勤】软件测试实战公开课（面试/接口/自动化/性能/项目）', 'java(17)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 18, 20, 0, '软件测试/Python/Java/测试开发/自动化测试', 'java(18)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 19, 20, 0, '职业新坐标--软件测试集训营', 'java(19)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 20, 20, 0, '【松勤】软件测试之python接口自动化测试实战试学', 'java(20)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 21, 20, 0, '软件测试/Python/接口/自动化/性能测试入门到精通【测码课堂】', 'java(21)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 22, 20, 0, '软件测试常用测试工具', 'java(1)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 23, 20, 0, '软件测试之python自动化测试/测试开发(web/app/jmeter接口实战', 'java(2)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 24, 20, 0, '软件测试/接口测试/postman/接口响应解析/抓包/get请求/post请求', 'java(3)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 25, 20, 0, '软件测试简历辅导/经典笔试面试提醒剖析拿下高薪offer【柠檬班】', 'java(4)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 26, 20, 0, '【松勤】软件测试/python编程/自动化测试/测试环境部署/实战课程', 'java(5)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 27, 20, 0, 'Linux与Shell脚本实战', 'java(6)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 28, 20, 0, '柠檬班Python金牌讲师试听课', 'java(7)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 29, 20, 0, 'Python接口自动化+软件测试项目实战pytest框架+jenkins+allure', 'java(8)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 30, 20, 0, '【华测教育】软件测试实战公开课  Python/自动化/性能/测试开发', 'java(9)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 31, 20, 0, '软件测试之Jmeter高级性能测试项目实战(赠送Loadrunner实战）', 'java(10)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 32, 20, 0, '软件测试Python/Java接口/App/RF自动化测试/测试开发', 'java(11)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 33, 20, 0, '软件测试高薪就业速成班31期', 'java(12)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 34, 20, 0, '【松勤】软件测试实战公开课（面试/接口/自动化/性能/项目）', 'java(13)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 35, 20, 0, '软件测试Java/Appium自动化测试与自动遍历测试入门', 'java(14)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 36, 20, 0, '软件测试0基础小白快速入门精品课2021最新【柠檬班】', 'java(15)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 37, 20, 0, '软件测试 / 名企定向培养测试开发Python进阶班', 'java(16)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 38, 20, 0, '【松勤】Web安全测试/渗透测试/软件测试/案例实操', 'java(17)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 39, 20, 0, '软件测试/火焰杯软件测试高校就业选拔赛辅导课', 'java(18)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 40, 20, 0, '【松勤】软件测试/APP测试/面试之测试工具(fiddler/monkey/git)', 'java(19)', '30000', 'C1', '职业新坐标--软件测试集训营', 'C1-T', '柠檬班-土豆老师', '就业班高级讲师', 'C1-1'),
(NULL, 41, 30, 0, '【翻转英语】3天逆袭英语直播训练营', 'java(20)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 42, 30, 0, '【e学苑直播公开课】每周提供免费直播公开课-点击报名关注不迷路', 'java(21)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 43, 30, 0, '【直播】英语口语发音入门零基础班', 'java(1)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 44, 30, 0, '英语语法全掌握免费班 跟着木木老师学语法', 'java(2)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 45, 30, 0, '最新简学英语零基础英语语法课程详解大全', 'java(3)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 46, 30, 0, '【外教★直播课_回放】 新概念英语 第一册 * 公益课', 'java(4)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 47, 30, 0, '【精品】零基础学英语音标拼读发音【蓝轨迹】', 'java(5)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 48, 30, 0, '国学启蒙课程论语 孟子 弟子规 三字经 千字文国学经典', 'java(6)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 49, 30, 0, '新概念英语coco新概念英语第1册,第234册【送MP3每课练习题】', 'java(7)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 50, 30, 0, '自由译者-职业翻译魔鬼训练营[International]', 'java(8)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 51, 30, 0, '高频200词-大学英语六级词汇 CET6考前救命班', 'java(9)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 52, 30, 0, '极简语法零起点（速成版）5小时理清英语语法', 'java(10)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 53, 30, 0, '新概念英语一册配套习题二课一练精讲1-24课', 'java(11)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 54, 30, 0, '【录播】英语零基础-自然拼读之英文绘本拼读练习集', 'java(12)', '23000', 'Y1', 'TSA英语(G)', 'Y1-T', '黎灌锋', '特级讲师', 'Y1-1'),
(NULL, 55, 40, 1, '马士兵JAVA高级互联网架构师｜java进阶架构师专题【马士兵教育】', 'java(13)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 56, 40, 1, 'JAVA架构师严选课互联网架构/分布式/高并发/微服务【图灵课堂】', 'java(14)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 57, 40, 1, 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'java(15)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 58, 40, 1, '2021版MCA架构师【马士兵教育】', 'java(16)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 59, 40, 1, '分布式架构 — Redis高并发分布式锁【图灵课堂】', 'java(17)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 60, 40, 1, 'Java架构师,Java高级开发|java进阶大型互联网架构师专题【咕泡】', 'java(18)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 61, 40, 1, 'Mysql底层原理与性能调优【图灵课堂】', 'java(19)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 62, 40, 1, '马士兵亲授：99%人都会死的多线程调优难点', 'java(20)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 63, 40, 1, 'Spring循环依赖与Spring AOP底层源码【图灵课堂】【周瑜老师】', 'java(21)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 64, 40, 1, 'MySQL数据库性能优化数据分库分表实战java高级架构进阶课-咕泡', 'java(1)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 65, 40, 1, '性能调优系列 深入理解Mysql索引底层数据结构与算法【图灵课堂】', 'java(2)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 66, 40, 1, 'Java基础入门阶段（javase教程，零基础java入门教程）（阶段一）', 'java(3)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 67, 40, 1, 'java高并发编程之AQS源码分析,java多线程java高级java架构师进阶', 'java(4)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 68, 40, 1, 'Java高薪工程师培养计划  第13期  全阶班', 'java(5)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 69, 40, 1, 'Java互联网架构师之设计模式精讲【图灵课堂】', 'java(6)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 70, 40, 1, 'Java/springBoot/微服务/SeviceMesh/消息队列/加微信Java-Gerry', 'java(7)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 71, 40, 1, '多线程高并发底层锁机制与最优化实践-区别于Synchronized', 'java(8)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 72, 40, 1, 'Java落地方案学习路线图（真实工业界场景应用）', 'java(9)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 73, 40, 1, 'Spring/SpringMVC/SpringBoot/从零开始学习Spring设计思想和源码', 'java(10)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 74, 40, 1, 'java线程池详解线程池面试题线程池优点JAVA高级架构课程序员培训', 'java(11)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 75, 40, 1, '阿里P7面试题Spring IOC加载流程源码深度剖析【图灵课堂】', 'java(12)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 76, 40, 1, '2021年最新ElasticSearch7.6.x完整教程通俗易懂从0到集群高可用', 'java(13)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 77, 40, 1, 'java架构师核心技术/SpringBoot 2020版最新教程/springcloud', 'java(14)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 78, 40, 1, 'Java高薪工程师培养计划 LevelOne', 'java(15)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 79, 40, 1, '微服务Eureka原理springcloud Eureka java高级开发架构进阶-咕泡', 'java(16)', '45001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 80, 40, 1, '【图灵VIP严选课程】JAVA互联网架构师专题/分布式/高并发/微服务', 'java(17)', '15001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 81, 40, 1, '千万级并发美团订单处理技术实战！', 'java(18)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 82, 40, 1, 'Docker部署微服务实战【诸葛老师】【图灵课堂】', 'java(19)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 83, 40, 1, 'jvm调优 jvm性能优化面试-咕泡学院java高级架构师VIP试听视频', 'java(20)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 84, 40, 1, '【性能调优系列】深入理解mysql锁与事务隔离级别【图灵课堂】', 'java(21)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 85, 40, 1, 'HashMap面试题hashmap底层实现原理java高级架构师实战进阶_咕泡', 'java(1)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 86, 40, 1, '搞定AOP面试从Spring热插件', 'java(2)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 87, 40, 1, 'Java互联网架构师之路/微服务/高性能/分布式/底层源码/高并发', 'java(3)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 88, 40, 1, 'Spring Cloud Alibaba三高架构组件源码深度剖析【图灵课堂】', 'java(4)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 89, 40, 1, 'Apache Dubbo通信原理手写实现RPC框架Java高级开发架构进阶-咕泡', 'java(5)', '30001', 'F3', 'JAVA高级开发Spring/JVM/MySQL/Redis/线程/IO/分布式/微服务/ELK', 'F3-teacther', 'Mark老师', ' 曾担任SE、技术经理、系统架构师，十余年java行业经验，先后再多家互联网公司任职。', 'F3-3'),
(NULL, 90, 50, 0, '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'java(6)', '15600', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 91, 50, 0, 'excel入门到精通（基础 函数图表等知识）', 'java(7)', '24500', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 92, 50, 0, '零基础两天入门Excel VBA(第三版)', 'java(8)', '14700', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 93, 50, 0, '【全套】Excel(表格)零基础入门案例实操小白零基础进阶系列课', 'java(9)', '16000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 94, 50, 0, '【免费】Excel函数其实并不难|透彻解析|一看就懂|老师答疑', 'java(10)', '9900', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 95, 50, 0, '信息处理分析（excel办公软件应用）', 'java(11)', '7800', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 96, 50, 0, '跟着陈冉学习Excel基础大全字幕视频教程（共59节实课）', 'java(12)', '21000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 97, 50, 0, 'Excel365新增函数LET/LAMBDA/REDUCE/MAKEARRAY等函数[朱仕平]', 'java(13)', '14500', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 98, 50, 0, 'Excel财务会计加VBA', 'java(14)', '12300', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 99, 50, 0, '【免费】Excel录播视频教程-制作表格-函数与公式-高效办公', 'java(15)', '11000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 100, 50, 0, 'Excel-VBA零基础入门  ▎[VBA小白脱白系列]免费全套教程', 'java(16)', '10000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 101, 50, 0, '全套Excel零基础小白入门公开课 office办公软件精讲视频教程', 'java(17)', '10000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 102, 50, 0, '【全套】Excel/WPS零基础入门(电子表格)小白脱白系列', 'java(18)', '22000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 103, 50, 0, 'Excel超级全套VIP班 Excel极速精通 EXCEL函数贯通', 'java(19)', '14000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 104, 50, 0, 'Excel零基础操作大全入门公开课 Office办公软件在线视频教程', 'java(20)', '8000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 105, 50, 0, 'Office办公软件Excel/Word/PPT零基础小白公开试听课', 'java(21)', '15000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 106, 50, 0, '精通Excel视频教程-④商务图表篇【朱仕平】', 'java(18)', '8000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 107, 50, 0, 'Office高级办公 Excel电子表格 公式函数 提高办公效率 必学课程', 'java(19)', '13000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 108, 50, 0, 'excel教程入门到精通精讲视频OFFICE办公软件免费公开课', 'java(20)', '28000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1'),
(NULL, 109, 50, 0, 'excel教程 excel零基础 excel入门(办公软件、电子表格)【oeasy】', 'java(21)', '18000', 'E1', '【免费】Excel教程 excel零基础 高效职场办公 实战速成 [朱仕平]', 'E1-T', '朱仕平', '微软认证Office领域专家', 'E1-1');