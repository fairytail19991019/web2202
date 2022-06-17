-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2022-06-17 13:52:37
-- 服务器版本： 10.4.24-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `kz`
--
CREATE DATABASE IF NOT EXISTS `kz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kz`;

-- --------------------------------------------------------

--
-- 表的结构 `kz_category`
--

DROP TABLE IF EXISTS `kz_category`;
CREATE TABLE `kz_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `kz_category`
--

INSERT INTO `kz_category` (`id`, `category_name`) VALUES
(10, '前端开发'),
(20, '软件测试'),
(30, '英语'),
(40, 'java'),
(50, 'Excel');

-- --------------------------------------------------------

--
-- 表的结构 `kz_class`
--

DROP TABLE IF EXISTS `kz_class`;
CREATE TABLE `kz_class` (
  `time` varchar(32) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `image` varchar(64) DEFAULT NULL,
  `hits` varchar(32) DEFAULT NULL,
  `index_img` varchar(64) DEFAULT NULL,
  `class_title` varchar(64) DEFAULT NULL,
  `teacher_head` varchar(64) DEFAULT NULL,
  `teacher` varchar(16) DEFAULT NULL,
  `teacher_introduce` varchar(64) DEFAULT NULL,
  `detail_img` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `kz_class`
--

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

-- --------------------------------------------------------

--
-- 表的结构 `kz_jiuke`
--

DROP TABLE IF EXISTS `kz_jiuke`;
CREATE TABLE `kz_jiuke` (
  `gid` int(11) NOT NULL,
  `issold` tinyint(1) DEFAULT 0,
  `title` varchar(32) DEFAULT NULL,
  `desc` varchar(32) DEFAULT NULL,
  `mai` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `oprice` int(11) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `kz_jiuke`
--

INSERT INTO `kz_jiuke` (`gid`, `issold`, `title`, `desc`, `mai`, `price`, `oprice`, `tag`, `subject_id`) VALUES
(1, 0, '中考暴力作文写作', '告别无话可说，就是那么一回事', 5132, 30, 60, '爆款', 2),
(2, 0, '传世名作初体验', '文言文的魅力，用不同的打开方式', 4262, 30, 60, NULL, 2),
(3, 0, '人物之百态人生', '见闻与传奇，聆听他们的故事', 4262, 0, 30, '免费', 2),
(4, 0, '看历史风云变', '历史车轮滚滚，史家文采涛涛', 4262, 30, 60, '', 2),
(5, 0, '识文体品佳作', '千古名作,如何看懂其中的门道', 4262, 30, 60, '火爆', 2),
(6, 0, '品味诸子百家', '百家争鸣的时代,大师说了什么', 4262, 30, 60, '', 2),
(7, 0, '铭记美丽河山', '游山玩水,托物言志', 4262, 30, 60, '', 2),
(8, 0, '虚词上', '重点讲解“之”“乎”“者”“也”等九个虚词', 4262, 30, 60, '', 2),
(9, 0, '性格稳定的实词', '形象的比喻和富有趣味型的例句帮助同学们掌握', 4262, 30, 60, '', 2),
(10, 0, '比较变态的实词', '总结最有效的方法使同学们有方法可循', 4262, 30, 60, '', 2),
(11, 0, '文言文翻译', '归纳文言文中的特殊句式', 4262, 30, 60, '', 2),
(12, 0, '集合上', '学习函数的最重要前提，帮助你打好高中基础', 4262, 30, 60, '火爆', 1),
(13, 0, '集合下', '金牌教练，帮你跨过初中高中数学分水岭', 4262, 0, 60, '免费', 1),
(14, 0, '函数的概念与表示', '高效学习函数基本概念', 4262, 0, 60, '免费', 1),
(15, 0, '复合函数解析式求法', '透析复杂函数基本概念', 4262, 30, 60, '', 1),
(16, 0, '函数的单调性', '掌握函数的重要性质单调性', 4262, 30, 60, '', 1),
(17, 0, '单调性的应用', '趣味讲解单调性运用', 4262, 30, 60, '', 1),
(18, 0, '函数的奇偶性', '举一反三，活学活用', 4262, 30, 60, '', 1),
(19, 0, '函数的周期性', '循序渐进学习函数周期性', 4262, 30, 60, '', 1),
(20, 0, '函数的综合应用', '5大技巧,7大视屏', 4262, 30, 60, '', 1),
(21, 0, '指数及指数函数', '运用函数基本知识解剖基本初等函数指数函数', 4262, 30, 60, '', 1),
(22, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(23, 0, '温度与标识', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(24, 0, '温度计使用方法', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(25, 0, '长融化与凝固', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(26, 0, '汽化现象', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(27, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(28, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(29, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(30, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(31, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(32, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(33, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(34, 0, '长度和时间的测量', '最基本的物理量可以衡量万物', 4262, 30, 60, '', 4),
(35, 0, '物质的变化与性质', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(36, 0, '走进化学实验室', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(37, 0, '构成物质的例子', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(38, 0, '化学元素', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(39, 0, '化学式和方程式', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(40, 0, '器质性制取', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(41, 0, '物质的变化与性质', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(42, 0, '物质的变化与性质', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(43, 0, '物质的变化与性质', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(44, 0, '物质的变化与性质', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(45, 0, '物质的变化与性质', '物理变化与化学变化的区别', 4262, 30, 60, '', 5),
(46, 0, '神奇动物在哪里', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(47, 0, '谁偷窥了我的日常', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(48, 0, '零点奇迹的名词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(49, 0, '零点奇迹的冠词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(50, 0, '零点奇迹的代词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(51, 0, '零点奇迹的数词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(52, 0, '零点奇迹的形容词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(53, 0, '零点奇迹的动词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(54, 0, '零点奇迹的易混淆动词辨析', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(55, 0, '零点奇迹的副词', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(56, 0, '零点奇迹的宾语从句', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3),
(57, 0, '初中易错词汇', '神奇的动物，趣味的单词', 4262, 30, 60, '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `kz_subject`
--

DROP TABLE IF EXISTS `kz_subject`;
CREATE TABLE `kz_subject` (
  `kid` int(11) NOT NULL,
  `sname` varchar(32) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `kz_subject`
--

INSERT INTO `kz_subject` (`kid`, `sname`, `icon`) VALUES
(1, '数学', NULL),
(2, '语文', NULL),
(3, '英语', NULL),
(4, '物理', NULL),
(5, '化学', NULL),
(6, '政治', NULL),
(7, '地理', NULL),
(8, '生物', NULL),
(9, '历史', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `kz_user`
--

DROP TABLE IF EXISTS `kz_user`;
CREATE TABLE `kz_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `kz_user`
--

INSERT INTO `kz_user` (`uid`, `uname`, `upwd`, `email`, `phone`) VALUES
(1, '张三', '123456', '126@qq.com', '15878942654'),
(2, '李四', '123456', '1245@qq.com', '15873494265'),
(3, 'admin', '123456', '1245@qq.com', '15257609076');

--
-- 转储表的索引
--

--
-- 表的索引 `kz_category`
--
ALTER TABLE `kz_category`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `kz_class`
--
ALTER TABLE `kz_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- 表的索引 `kz_jiuke`
--
ALTER TABLE `kz_jiuke`
  ADD PRIMARY KEY (`gid`);

--
-- 表的索引 `kz_subject`
--
ALTER TABLE `kz_subject`
  ADD PRIMARY KEY (`kid`);

--
-- 表的索引 `kz_user`
--
ALTER TABLE `kz_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `kz_category`
--
ALTER TABLE `kz_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- 使用表AUTO_INCREMENT `kz_class`
--
ALTER TABLE `kz_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- 使用表AUTO_INCREMENT `kz_jiuke`
--
ALTER TABLE `kz_jiuke`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- 使用表AUTO_INCREMENT `kz_subject`
--
ALTER TABLE `kz_subject`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `kz_user`
--
ALTER TABLE `kz_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 限制导出的表
--

--
-- 限制表 `kz_class`
--
ALTER TABLE `kz_class`
  ADD CONSTRAINT `kz_class_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `kz_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
