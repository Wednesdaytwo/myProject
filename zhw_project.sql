-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-18 03:16:19
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zhw_project`
--

-- --------------------------------------------------------

--
-- 表的结构 `zw_authority`
--

CREATE TABLE `zw_authority` (
  `id` int(10) NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `updatetime` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zw_authority`
--

INSERT INTO `zw_authority` (`id`, `pic`, `url`, `updatetime`) VALUES
(1, 'img/z1.jpg', '#', 0),
(2, 'img/z2.jpg', '#', 0),
(3, 'img/z3.jpg', '#', 0),
(4, 'img/z4.jpg', '#', 0),
(5, 'img/z5.jpg', '#', 0),
(6, 'img/z6.jpg', '#', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zw_environment`
--

CREATE TABLE `zw_environment` (
  `id` int(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `updatetime` tinyint(50) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zw_environment`
--

INSERT INTO `zw_environment` (`id`, `title`, `pic`, `updatetime`) VALUES
(1, '公司外景', 'img/hj1.jpg', 0),
(2, '公司外景', 'img/hj2.jpg', 0),
(3, '公司大厅', 'img/hj3.jpg', 0),
(4, '周边环境', 'img/hj4.jpg', 0),
(5, '教学环境', 'img/hj5.jpg', 0),
(6, '教学环境', 'img/hj6.jpg', 0),
(7, '周边环境', 'img/hj7.jpg', 0),
(8, '周边环境', 'img/hj8.jpg', 0),
(9, '周边环境', 'img/hj9.jpg', 0),
(10, '周边环境', 'img/hj10.jpg', 0),
(11, '周边环境', 'img/hj11.jpg', 0),
(12, '教学环境', 'img/hj12.jpg', 0),
(13, '教学环境', 'img/hj13.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zw_link`
--

CREATE TABLE `zw_link` (
  `id` int(10) NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `updatetime` tinyint(50) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zw_link`
--

INSERT INTO `zw_link` (`id`, `pic`, `url`, `updatetime`) VALUES
(1, 'img/lj1.gif', '#', 0),
(2, 'img/lj2.jpg', '#', 0),
(3, 'img/lj3.jpg', '#', 0),
(4, 'img/lj4.jpg', '#', 0),
(5, 'img/lj5.jpg', '#', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zw_product`
--

CREATE TABLE `zw_product` (
  `id` int(10) NOT NULL,
  `lid` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `subtitle` varchar(20) COLLATE utf8_bin NOT NULL,
  `details` varchar(255) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `updatetime` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_product`
--

INSERT INTO `zw_product` (`id`, `lid`, `title`, `subtitle`, `details`, `url`, `pic`, `updatetime`) VALUES
(1, 1, '双流老妈兔头 【2---5天】', '双流老妈兔头 【2---5天】', '成都上善佳朱厨师“双流老妈兔头”，起源于二十年前一位慈祥的妈妈，在双流县城开的一间麻辣烫小吃店…… ,妈妈的儿子从小爱吃兔头，那时候成都吃兔头的店很少，妈妈心疼儿子，便在麻辣烫的锅里煮给儿子吃。倾注着母爱的兔头不仅让儿子解馋了，更上瘾了。儿子天天在店里吃兔头的模样，仿佛一块招牌，吸引了登门的客人。一传十、十传百，麻辣鲜香的兔头吸引的人越来越多。聪明的儿子建议妈妈将小店扩大，专卖...,', '#', 'img/ts2.jpg', 150123456789),
(2, 2, '手撕烤兔 【2---5天】', '手撕烤兔 【2---5天】', '“成都上善佳”手撕烤兔，作为四川的传统小吃、时尚风味，经多次改良，在传统工艺的基础上，加入了特有的新配方，选料更加考究（用兔采用新鲜绿色生态兔），配料精心调制，口味更加香醇，香辣爽口而不上火。“成都上善佳”手撕手撕烤兔肉厚处醇香粑软，肉薄处酥香脆爽，细细嚼之齿间久久留香，不是野味胜似野味，是居家待客、娱乐休闲及旅游、探亲的特色食品。', '#', 'img/ts1.jpg', 150123456789),
(3, 3, '美蛙鱼头 【2---5天】', '美蛙鱼头 【2---5天】', '【成都上善佳美蛙鱼头】，经过多年的开发和实践，采用秘制配方，将美蛙肉体味甘温，胆性寒味苦的特点与花莲鱼头肉质鲜美，火锅辣椒中的味辛，性热的特点相互融和，消除了传统火锅的辛辣，重点突出麻，辣，鲜，香，嫩的特点，将鱼头的鲜美和美蛙的细嫩两者特性完美结合，具有真正做到了辣而不燥，久食不上火，更加注重营养，健康，低油，低脂。', '#', 'img/ts3.jpg', 150123456789),
(4, 4, '藤椒钵钵鸡 【2---5天】', '藤椒钵钵鸡 【2---5天】', '钵钵鸡是四川名小吃，从清末流传至今已有百年历史，名字听着倒挺特别，其实是来源于鸡肉的装盛方式。较早的钵钵鸡，是将去骨鸡片加入各种调料凉拌起来，再装入陶钵中盛放。其凉拌方式深得川菜精髓，色鲜味美、麻辣爽口。 　　现在的钵钵鸡，还是用竹签串，也还是凉拌的方式，有些也用陶钵装上，但再也不局限于鸡片和内脏。还有更多的原料选择，荤素菜品皆有，鸡肉片、内脏、鸡爪、鸡翅，还有各种素菜，分门... ', '#', 'img/ts4.jpg', 150123456789),
(5, 5, '冷锅串串香 【2---5天】', '冷锅串串香 【2---5天】', ' 冷锅串串，又名麻辣烫，串串香，是火锅或者说是冷锅鱼的一种演变“串串香”，属于川菜系。“冷锅串串”最早出现在二十世纪80年代中期的成都 。那时重庆火锅刚进入成都餐饮市场不久，一些城镇待业人员为了生计，就在一些热闹的场所如商场、影剧院、录相厅等附近摆摊经营“串串香”，所以属于火锅的一种，但比之略有不同。它是由各种蔬菜、肉食切成方便串起来的形状，用做好的竹签把这些菜品穿成一串... ', '#', 'img/ts5.jpg', 150123456789),
(6, 6, '锡纸花甲粉-花甲米线 【2---5天】', '锡纸花甲粉-花甲米线 【2---5天】', '锡纸花甲又叫花甲米线，花甲粉，是一种近几年刚出的特色风味小吃品种，锡纸花甲是用特制的锡纸(优质铝合金加工压制而成)将鲜嫩的花甲、特制的酱汁以及柔韧的米线密闭加热熬制而成。锡纸花甲给人的感觉就是香，香味扑鼻，只叫人垂涎三尺。锡纸花甲具有香、辣、嫩等特点，口感上丰满醇厚、味美滋滑，并且还具有滋阴明目、化痰、养精润脏的功效。 ', '#', 'img/ts6.jpg', 150123456789),
(7, 7, '纸上烤鱼纸包鱼 【2---5天】', '纸上烤鱼纸包鱼 【2---5天】', '纸上烤鱼是近几年来疯狂流行在川渝大地的一种新型健康美食，结合了韩国纸上烤肉和传统烤鱼的特色，研制出的新一代健康烤鱼，一经推向市场便被广大消费者所追捧。据不完全统计，重庆和四川两地，近一年时间如雨后春笋般的开了上千家纸包鱼餐厅。纸上烤鱼摒弃了传统的碳烤方式，以纸代替炭火既无传统餐厅的重油重烟，营养更少流失，鱼肉更加鲜嫩，将食物的健康放在了第一位。加之调料的创新使... ', '#', 'img/ts7.jpg', 150123456789),
(8, 8, '锡纸烤脑花 【2---5天】', '锡纸烤脑花 【2---5天】', ' 锡纸烤脑花是四川地区的一道特色小吃，主要是采用猪脑子，放入各种配料精心调制，用锡箔纸包上之后然后再加以烘烤，用锡纸拷出来的脑花真的香而不腻、油而不腻。', '#', 'img/ts8.jpg', 150123456789),
(9, 9, '成都冒菜 【2---5天】', '成都冒菜 【2---5天】', '四川人喜欢火锅、麻辣烫，都知道。朋友聚餐，基本都是火锅，图它热闹，随性，能将就每个人的喜好。作为火锅的快餐版，冒菜在成都也是相当普及，卖冒菜的小店到处都是。已经不记得冒菜是什么时候冒出来的，记得初中的时候就见过冒菜了。 冒菜，不是一种菜品，“冒”是动词，就是把菜往汤底里搁，熟了再捞起来，一放一捞这么一个动作。? 一碗冒菜一碗饭，很快就能吃到，也超下饭。较常见的是“素...', '#', 'img/ts10.jpg', 150123456789),
(10, 10, '【视频学习】 【全国包邮】', '【视频学习】 【全国包邮】', '成都上善佳朱厨师“双流老妈兔头”，起源于二十年前一位慈祥的妈妈，在双流县城开的一间麻辣烫小吃店…… ,妈妈的儿子从小爱吃兔头，那时候成都吃兔头的店很少，妈妈心疼儿子，便在麻辣烫的锅里煮给儿子吃。倾注着母爱的兔头不仅让儿子解馋了，更上瘾了。儿子天天在店里吃兔头的模样，仿佛一块招牌，吸引了登门的客人。一传十、十传百，麻辣鲜香的兔头吸引的人越来越多。聪明的儿子建议妈妈将小店扩大，专卖... ', '#', 'img/ts9.jpg', 150123456789);

-- --------------------------------------------------------

--
-- 表的结构 `zw_student`
--

CREATE TABLE `zw_student` (
  `id` int(10) NOT NULL,
  `lid` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `pic` varchar(50) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_student`
--

INSERT INTO `zw_student` (`id`, `lid`, `title`, `pic`, `url`) VALUES
(1, 0, '黑龙江省哈尔滨市张女士', 'img/xy2.jpg', '#'),
(2, 0, '贵州黔西南饶先生', 'img/xy5.jpg', '#'),
(3, 0, '吉林长春谢先生', 'img/xy9.jpg', '#'),
(4, 0, '江西景德镇杨先生', 'img/xy3.jpg', '#'),
(5, 0, '湖南省永州胡先生', 'img/xy1.jpg', '#'),
(6, 0, '四川泸州李女士', 'img/xy4.jpg', '#'),
(7, 0, '内蒙古兴安盟葛先生', 'img/xy6.jpg', '#'),
(8, 0, '安徽淮北王先生', 'img/xy7.jpg', '#'),
(9, 0, '广东佛山王先生', 'img/xy8.jpg', '#');

-- --------------------------------------------------------

--
-- 表的结构 `zw_user`
--

CREATE TABLE `zw_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `zw_user`
--

INSERT INTO `zw_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingdingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', 1),
(2, 'dangdangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1),
(4, 'yayayaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0),
(5, '1111', '111111', '441977193@qq.com', '18357100796', NULL, NULL, NULL),
(6, 'ABCD', '123456', '123@qq.com', '13538894495', NULL, NULL, NULL),
(7, 'mohk', '123456', '11@qq.com', '13512312312', NULL, NULL, NULL),
(8, '121123', 'w13945128995', '491000888@qq.com', '13213389258', NULL, NULL, NULL),
(9, '555555', '5555555', '55555555@163.com', '13400000000', NULL, NULL, NULL),
(10, 'xuyong', '123456', '123456789@qq.com', '15525623622', NULL, NULL, NULL),
(11, 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', NULL, NULL, NULL),
(12, 'siyongbo', '900427', '616188545@qq.com', '18447103998', NULL, NULL, NULL),
(13, 'qwerty', '123456', '1091256014@qq.com', '15617152367', NULL, NULL, NULL),
(14, 'dingziqiang', '456456', '996534706@qq.com', '15567502520', NULL, NULL, NULL),
(15, 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', NULL, NULL, NULL),
(16, 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', NULL, NULL, NULL),
(21, 'Jessy', 'ac210921', '123456@qq.com', '13523456789', NULL, NULL, NULL),
(22, 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', NULL, NULL, NULL),
(23, '查安军', '025520', '27514172112@qq.com', '18158899905', NULL, NULL, NULL),
(24, '123456', '123456', '123456@1.com', '13815668132', NULL, NULL, NULL),
(25, '1234', '111111', '734713428@qq.com', '18061920422', NULL, NULL, NULL),
(26, 'qwe12345', '123123', '1191769510@qq.com', '15234010643', NULL, NULL, NULL),
(28, 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', NULL, NULL, NULL),
(29, 'li999999', 'li999999', 'limingdir@163.com', '18557512341', NULL, NULL, NULL),
(30, '111111111111', '123456', '1057631733@qq.com', '15275106677', NULL, NULL, NULL),
(32, 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', NULL, NULL, NULL),
(33, 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', NULL, NULL, NULL),
(34, 'yangtao', '123456', '250737026@qq.com', '18256953222', NULL, NULL, NULL),
(35, 'tarena', '123456', '783664829@qq.com', '17711625897', NULL, NULL, NULL),
(40, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(41, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(42, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(43, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(44, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(45, 'hjh', '958030', 'hjh@126.com', '17812344567', NULL, NULL, NULL),
(46, 'ewq', '123456', '1234567890@qq.com', '12345678909', NULL, NULL, NULL),
(47, 'pipi', '123456', '78@qq.com', '12367889993', NULL, NULL, NULL),
(48, 'Lovica', '309418727', '1684707021@qq.com', '18435130456', NULL, NULL, NULL),
(49, 'htt0908', '19920908', '418720482@qq.com', '15244691033', NULL, NULL, NULL),
(50, 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', NULL, NULL, NULL),
(51, 'zhong', '123456', '123456789@126.com', '13120211111', NULL, NULL, NULL),
(52, '金豆豆', '123456789', '1170363143@qq.com', '15738619097', NULL, NULL, NULL),
(53, 'wangjunfei', '123456', '396225880@qq.com', '13205935797', NULL, NULL, NULL),
(54, 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', NULL, NULL, NULL),
(55, 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', NULL, NULL, NULL),
(56, 'xiaoming123', '123456', '54646@qq.com', '13553688534', NULL, NULL, NULL),
(57, 'yuanzhi', '123456', '270096123@qq.com', '15962573639', NULL, NULL, NULL),
(58, 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', NULL, NULL, NULL),
(59, 'fengkuang', '123456', '113577976@qq.com', '18559132248', NULL, NULL, NULL),
(60, 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', NULL, NULL, NULL),
(61, 'linlei0001', '58874439', '876056078@qq.com', '13390922939', NULL, NULL, NULL),
(62, 'superman', '1314520', '904202099@qq.com', '12345678910', NULL, NULL, NULL),
(63, 'tom222', '123456', '1@163.com', '13456789012', NULL, NULL, NULL),
(64, 'tom1234', '123456', '2@163.com', '13423456789', NULL, NULL, NULL),
(65, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, '左天', 1),
(66, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, NULL, NULL),
(67, '李白李白', '123456', '125365@163.com', '13986273022', NULL, NULL, NULL),
(68, 'dingdong', '123456', '15194898156@qq.com', '15112316516', NULL, NULL, NULL),
(69, 'wenjinhua', '236239', '461677613@qq.com', '13516574786', NULL, NULL, NULL),
(70, 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', NULL, NULL, NULL),
(71, 'zhangsan', 'add123456', 'add@qq.com', '12234324223', NULL, NULL, NULL),
(72, '高渐离', '123456', '935263676@qq.com', '18352501250', NULL, NULL, NULL),
(73, 'lifan', '123456', '18092034652@163.com', '18092933456', NULL, NULL, NULL),
(74, 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', NULL, NULL, NULL),
(75, 'tingDING', '123456', '12345678@qq.com', '13548525468', NULL, NULL, NULL),
(76, 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', NULL, NULL, NULL),
(77, 'weiyiwei', '123456', '598475405@qq.com', '15923741956', NULL, '韦祎伟', 1),
(78, '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', NULL, NULL, NULL),
(79, 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', NULL, NULL, NULL),
(80, 'loonchao', '123456', '850248873@qq.com', '13548729051', NULL, NULL, NULL),
(81, 'hushuang', '123456', '850248813@qq.com', '15802507525', NULL, NULL, NULL),
(82, 'test713', '2017713', '12458148@qq.com', '13596542654', NULL, NULL, NULL),
(83, 'fhr9588', '000009588', '111111111@qq.com', '12345666666', NULL, NULL, NULL),
(84, 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', NULL, NULL, NULL),
(85, 'tom10', '123456', '123@163.com', '12323456', NULL, NULL, NULL),
(86, '12121', '121212', '516898@qq.com', '15163222922', NULL, NULL, NULL),
(87, 'qwer', 'qwer123', '519808982@qq.com', '15163222923', NULL, NULL, NULL),
(88, '芳芳。。', '111111', '627265@qq.com', '17704622223', NULL, NULL, NULL),
(89, 'smm123456', '963852741', '974255093@qq.com', '15098807312', NULL, NULL, NULL),
(90, 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', NULL, NULL, NULL),
(91, 'tom', '123456', 'dang@qq.com', '13501234568', NULL, 'tom', 1),
(92, 'Jerry', '123456', 'jerry@qq.com', '13511011000', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zw_authority`
--
ALTER TABLE `zw_authority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zw_environment`
--
ALTER TABLE `zw_environment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zw_link`
--
ALTER TABLE `zw_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zw_product`
--
ALTER TABLE `zw_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zw_student`
--
ALTER TABLE `zw_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zw_user`
--
ALTER TABLE `zw_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `zw_authority`
--
ALTER TABLE `zw_authority`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `zw_environment`
--
ALTER TABLE `zw_environment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `zw_link`
--
ALTER TABLE `zw_link`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `zw_product`
--
ALTER TABLE `zw_product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `zw_student`
--
ALTER TABLE `zw_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `zw_user`
--
ALTER TABLE `zw_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
