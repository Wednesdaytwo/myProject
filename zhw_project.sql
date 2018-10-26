-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2018-10-26 04:12:31
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `zhw_project`
--

-- --------------------------------------------------------

--
-- 表的结构 `zw_authority`
--

CREATE TABLE `zw_authority` (
  `id` int(10) NOT NULL,
  `pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `updatetime` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_authority`
--

INSERT INTO `zw_authority` (`id`, `pic`, `url`, `updatetime`) VALUES
(1, 'http://127.0.0.1:8000/img/z1.jpg', '#', 0),
(2, 'http://127.0.0.1:8000/img/z2.jpg', '#', 0),
(3, 'http://127.0.0.1:8000/img/z3.jpg', '#', 0),
(4, 'http://127.0.0.1:8000/img/z4.jpg', '#', 0),
(5, 'http://127.0.0.1:8000/img/z5.jpg', '#', 0),
(6, 'http://127.0.0.1:8000/img/z6.jpg', '#', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zw_comment`
--

CREATE TABLE `zw_comment` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `evaluation` int(5) NOT NULL,
  `server` int(5) NOT NULL,
  `teachers` int(5) NOT NULL,
  `environment` int(5) NOT NULL,
  `taste` int(5) NOT NULL,
  `project` varchar(50) COLLATE utf8_bin NOT NULL,
  `content` varchar(500) COLLATE utf8_bin NOT NULL,
  `inputime` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_comment`
--

INSERT INTO `zw_comment` (`id`, `uid`, `evaluation`, `server`, `teachers`, `environment`, `taste`, `project`, `content`, `inputime`) VALUES
(1, 1, 5, 5, 5, 5, 5, '双流老妈兔头', '关注很久了，这次终于去了，路很好找，就在青城山风景区的火车站，招牌红黄配，店面不是特别大，但厨房配套设施很专业。据老板介绍当初第一部（西游记）孙悟空拜师学艺那集就是在青城山拍的，果真环境不错。看来学技术找对地方了！ 专程去学的纸上烤鱼，因为在我们当地已经有两家了生意都很好，开始还以为要学好久，结果一天多的时间就学会，出师了。这效率杠杠的！吃了第一口自己亲手做出来的鱼真心不错，调料没有那么复杂但是味道真的棒棒棒，先吃了几口，还是停不下来，但是味道确实好，推荐蒜香味，不是一般的香嫩啊，怎么煮都嫩的不得了， 味道很不错，下次还会来学其他的，学习很轻松，没有过度夸张的程序。菜品没有多大的讲究，直接就做好了。自己弄，很有口感，很香，好吃，学费比较合理。', '2018-08-07'),
(2, 2, 5, 5, 5, 5, 5, '双流老妈兔头', '学习环境干净舒适 老师很亲切 上课生动有趣不会腻 学习的时候一个师傅专门教我们，教的很详细，还有其他人学别的菜，这次去专门学的花甲米线，味道很满意， 氛围很不错 师傅和其他工作人员也很好', '2018-09-10');

-- --------------------------------------------------------

--
-- 表的结构 `zw_comment_pic`
--

CREATE TABLE `zw_comment_pic` (
  `id` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `img_data` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_comment_pic`
--

INSERT INTO `zw_comment_pic` (`id`, `cid`, `img_data`) VALUES
(1, 1, 'http://127.0.0.1:8000/img/comment/20170508040625867.jpg'),
(8, 2, 'http://127.0.0.1:8000/img/comment/20170508040646165.jpg'),
(9, 2, 'http://127.0.0.1:8000/img/comment/20170508040625867.jpg'),
(10, 2, 'http://127.0.0.1:8000/img/comment/20170508040705936.jpg'),
(11, 2, 'http://127.0.0.1:8000/img/comment/20170508040731510.jpg'),
(2, 1, 'http://127.0.0.1:8000/img/comment/20170508040646165.jpg'),
(3, 1, 'http://127.0.0.1:8000/img/comment/20170508040705936.jpg'),
(4, 1, 'http://127.0.0.1:8000/img/comment/20170508040731510.jpg'),
(5, 1, 'http://127.0.0.1:8000/img/comment/20170508040756531.jpg'),
(6, 1, 'http://127.0.0.1:8000/img/comment/20170508040828101.jpg'),
(7, 1, 'http://127.0.0.1:8000/img/comment/20170508040904313.jpg'),
(12, 2, 'http://127.0.0.1:8000/img/comment/20170508040756531.jpg'),
(13, 2, 'http://127.0.0.1:8000/img/comment/20170508040828101.jpg'),
(14, 2, 'http://127.0.0.1:8000/img/comment/20170508040904313.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `zw_environment`
--

CREATE TABLE `zw_environment` (
  `id` int(10) NOT NULL,
  `title` varchar(100) COLLATE utf8_bin NOT NULL,
  `pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `updatetime` tinyint(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_environment`
--

INSERT INTO `zw_environment` (`id`, `title`, `pic`, `updatetime`) VALUES
(1, '公司外景', 'http://127.0.0.1:8000/img/hj1.jpg', 0),
(2, '公司外景', 'http://127.0.0.1:8000/img/hj2.jpg', 0),
(3, '公司大厅', 'http://127.0.0.1:8000/img/hj3.jpg', 0),
(4, '周边环境', 'http://127.0.0.1:8000/img/hj4.jpg', 0),
(5, '教学环境', 'http://127.0.0.1:8000/img/hj5.jpg', 0),
(6, '教学环境', 'http://127.0.0.1:8000/img/hj6.jpg', 0),
(7, '周边环境', 'http://127.0.0.1:8000/img/hj7.jpg', 0),
(8, '周边环境', 'http://127.0.0.1:8000/img/hj8.jpg', 0),
(9, '周边环境', 'http://127.0.0.1:8000/img/hj9.jpg', 0),
(10, '周边环境', 'http://127.0.0.1:8000/img/hj10.jpg', 0),
(11, '周边环境', 'http://127.0.0.1:8000/img/hj11.jpg', 0),
(12, '教学环境', 'http://127.0.0.1:8000/img/hj12.jpg', 0),
(13, '教学环境', 'http://127.0.0.1:8000/img/hj13.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zw_link`
--

CREATE TABLE `zw_link` (
  `id` int(10) NOT NULL,
  `pic` varchar(100) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `updatetime` tinyint(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_link`
--

INSERT INTO `zw_link` (`id`, `pic`, `url`, `updatetime`) VALUES
(1, 'http://127.0.0.1:8000/img/lj1.gif', '#', 0),
(2, 'http://127.0.0.1:8000/img/lj2.jpg', '#', 0),
(3, 'http://127.0.0.1:8000/img/lj3.jpg', '#', 0),
(4, 'http://127.0.0.1:8000/img/lj4.jpg', '#', 0),
(5, 'http://127.0.0.1:8000/img/lj5.jpg', '#', 0),
(12, 'http://127.0.0.1:8000/img/lj5.jpg', '#', 0),
(11, 'http://127.0.0.1:8000/img/lj2.jpg', '#', 0);

-- --------------------------------------------------------

--
-- 表的结构 `zw_pxxm`
--

CREATE TABLE `zw_pxxm` (
  `id` int(10) NOT NULL,
  `family_id` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `info` varchar(100) COLLATE utf8_bin NOT NULL,
  `img` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_pxxm`
--

INSERT INTO `zw_pxxm` (`id`, `family_id`, `title`, `info`, `img`) VALUES
(1, 1, '【视频函授的学员】', '【通过视频进行学习的学员】', 'http://127.0.0.1:8000/img/pxxm/20170819021913518.jpg'),
(2, 1, '特色烤猪蹄', '烤猪蹄一种新的特色烧烤，色、香、味具佳，一经推出就受...', 'http://127.0.0.1:8000/img/pxxm/20170207095607689.jpg'),
(3, 1, '锡纸花甲粉开心花甲花...', '锡纸花甲又叫花甲米线，花甲粉，是一种近几年刚出的特色...', 'http://127.0.0.1:8000/img/pxxm/20170110050251593.jpg'),
(4, 1, '锡纸烤鱼', '锡纸烧烤相比普通炭火烧烤更安全美味。通常用碳火和燃气...', 'http://127.0.0.1:8000/img/pxxm/20170110055541886.jpg'),
(5, 2, '锡纸烤脑花', '烤脑花是四川地区的一道特色美味儿小吃，气味醇厚，入口...', 'http://127.0.0.1:8000/img/pxxm/20170110055902973.jpg'),
(6, 2, '烤鱿鱼铁板鱿鱼', '铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁...', 'http://127.0.0.1:8000/img/pxxm/20170131080637805.jpg'),
(7, 2, '特色干锅--麻辣香锅', '四川的干锅非常有特色，成都也有非常多的干锅店，生意都...', 'http://127.0.0.1:8000/img/pxxm/20170223062312734.jpg'),
(8, 2, '纸包鱼纸上烤鱼', '纸上烤鱼是近几年来疯狂流行在川渝大地的一种新型健康美...', 'http://127.0.0.1:8000/img/pxxm/20170223063216270.jpg'),
(9, 3, '特色烧烤、烤串', '在夜色中走在城市的马路上，是需要做好心理准备的。迎接...', 'http://127.0.0.1:8000/img/pxxm/20170302040939130.jpg'),
(10, 3, '重庆万州烤鱼、诸葛烤...', '重庆万州烤鱼是把鱼剖洗净后平放在铁夹中，放在炉上用木...', 'http://127.0.0.1:8000/img/pxxm/20170410072754189.jpg'),
(11, 3, '四川卤水卤菜', '川味卤菜自形成之日起，便被广大群众所认可，由于卤菜具...', 'http://127.0.0.1:8000/img/pxxm/20170507024902962.jpg'),
(12, 3, '水产类【口口脆兔肚】...', '用兔肚头成菜很多人没想到，成本不高，但售价可观，再配...', 'http://127.0.0.1:8000/img/pxxm/20140812145336_79966.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `zw_pxxm_family`
--

CREATE TABLE `zw_pxxm_family` (
  `id` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `pname` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_pxxm_family`
--

INSERT INTO `zw_pxxm_family` (`id`, `pid`, `pname`) VALUES
(1, 1, '精品川味专业'),
(2, 2, '特色小吃专业'),
(3, 3, '麻辣诱惑专业');

-- --------------------------------------------------------

--
-- 表的结构 `zw_server`
--

CREATE TABLE `zw_server` (
  `id` int(10) NOT NULL,
  `lid` int(10) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `subtitle` varchar(20) COLLATE utf8_bin NOT NULL,
  `details` varchar(500) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL,
  `thumb` varchar(100) COLLATE utf8_bin NOT NULL,
  `updatetime` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_server`
--

INSERT INTO `zw_server` (`id`, `lid`, `title`, `subtitle`, `details`, `url`, `thumb`, `updatetime`) VALUES
(1, 1, '双流老妈兔头 【2---5天】', '双流老妈兔头 【2---5天】', '成都上善佳朱厨师双流老妈兔头，朱师傅双流老妈兔头，起源于二十年前一位慈祥的妈妈，在双流县城开的一间麻辣烫小吃店…… ,妈妈的儿子从小爱吃兔头，那时候成都吃兔头的店很少，妈妈心疼儿子，便在麻辣烫的锅里煮给儿子吃。倾注着母爱的兔头不仅让儿子解馋了，更上瘾了。儿子天天在店里吃兔头的模样，仿佛一块招牌，吸引了登门的客人。一传十、十传百，麻辣鲜香的兔头吸引的人越来越多。聪明的儿子建议妈妈将小店扩大，专卖兔头。因为大家都亲切而尊敬的称她老妈，店名干脆就叫——“双流老妈兔头”。 二十年岁月沧桑，“双流老妈兔头”早已成为成都食客追捧的知名美味，多年来老妈一直寻找品相整齐、肉质细嫩的兔头，味道纯正、回味醇香的麻辣调料，双流老妈兔头，美味超乎期待!', 'list_server.html?id=1', 'http://127.0.0.1:8000/img/ts2.jpg', 150123456789),
(2, 2, '手撕烤兔 【2---5天】', '手撕烤兔 【2---5天】', '“成都上善佳”手撕烤兔，作为四川的传统小吃、时尚风味，经多次改良，在传统工艺的基础上，加入了特有的新配方，选料更加考究（用兔采用新鲜绿色生态兔），配料精心调制，口味更加香醇，香辣爽口而不上火。“成都上善佳”手撕手撕烤兔肉厚处醇香粑软，肉薄处酥香脆爽，细细嚼之齿间久久留香，不是野味胜似野味，是居家待客、娱乐休闲及旅游、探亲的特色食品。', 'list_server.html?id=2', 'http://127.0.0.1:8000/img/ts1.jpg', 150123456789),
(3, 3, '美蛙鱼头 【2---5天】', '美蛙鱼头 【2---5天】', '在成都上善佳的美蛙鱼头，凭借其出众的口味、优质的食材和厚味重油的老重庆锅底迅速在成都美食中占据一席之地。有理想的吃货都知道，成都的美食名片上写着“火锅”两个大字。而美蛙鱼头就属于成都特色火锅中的一类。很多人远赴成都，归来念念不忘的还是这股“美蛙遇上鱼头”的奇妙味道，那种嫩香的麻辣快感已成为游客不能忘却的味觉牵挂。\n\n正宗口味是产地的，新鲜食材是本地的，这才是最具功力的美食。选用肉质鲜嫩的蛙和胶质醇厚的花鲢鱼头，配以四川采购的辣椒、花椒、米酒、滋补药材等数十种调料，让“麻、辣、鲜、香、烫、嫩、活”集于一锅之内。', 'list_server.html?id=3', 'http://127.0.0.1:8000/img/ts3.jpg', 150123456789),
(4, 4, '藤椒钵钵鸡 【2---5天】', '藤椒钵钵鸡 【2---5天】', '钵钵鸡是四川名小吃，从清末流传至今已有百年历史，名字听着倒挺特别，其实是来源于鸡肉的装盛方式。较早的钵钵鸡，是将去骨鸡片加入各种调料凉拌起来，再装入陶钵中盛放。其凉拌方式深得川菜精髓，色鲜味美、麻辣爽口。\n\n　　现在的钵钵鸡，还是用竹签串，也还是凉拌的方式，有些也用陶钵装上，但再也不局限于鸡片和内脏。还有更多的原料选择，荤素菜品皆有，鸡肉片、内脏、鸡爪、鸡翅，还有各种素菜，分门别类的串好。【其实钵钵鸡就是汤头多些的凉拌菜】，汤头一定要用鸡汤打底，精华所在。食客盈门，自己选菜，马上就能吃。', 'list_server.html?id=4', 'http://127.0.0.1:8000/img/ts4.jpg', 150123456789),
(5, 5, '冷锅串串香 【2---5天】', '冷锅串串香 【2---5天】', '冷锅串串，又名麻辣烫，串串香，是火锅或者说是冷锅鱼的一种演变“串串香”，属于川菜系。\n\n“冷锅串串”最早出现在二十世纪80年代中期的成都 。那时重庆火锅刚进入成都餐饮市场不久，一些城镇待业人员为了生计，就在一些热闹的场所如商场、影剧院、录相厅等附近摆摊经营“串串香”，所以属于火锅的一种，但比之略有不同。\n\n它是由各种蔬菜、肉食切成方便串起来的形状，用做好的竹签把这些菜品穿成一串一串，最后把它放入特制配方的锅里加工煮熟即可食用。食用时，可按自己的喜好添加油碟，醋碟等等。\n\n不过要【注意】，冷锅串串虽然有“冷”字，但它是热的，只是那口“锅”是冷的。食客盈门，自己选菜，菜是生的，选好后，交给厨师煮熟，之后端上桌方可食用。', 'list_server.html?id=5', 'http://127.0.0.1:8000/img/ts5.jpg', 150123456789),
(6, 6, '锡纸花甲粉-花甲米线 【2---5天】', '锡纸花甲粉-花甲米线 【2---5天】', '锡纸花甲又叫花甲米线，花甲粉，是一种近几年刚出的特色风味小吃品种，锡纸花甲是用特制的锡纸(优质铝合金加工压制而成)将鲜嫩的花甲、特制的酱汁以及柔韧的米线密闭加热熬制而成。锡纸花甲给人的感觉就是香，香味扑鼻，只叫人垂涎三尺。锡纸花甲具有香、辣、嫩等特点，口感上丰满醇厚、味美滋滑，并且还具有滋阴明目、化痰、养精润脏的功效。 ', 'list_server.html?id=6', 'http://127.0.0.1:8000/img/ts6.jpg', 150123456789),
(7, 7, '纸上烤鱼纸包鱼 【2---5天】', '纸上烤鱼纸包鱼 【2---5天】', '成都上善佳纸上烤鱼是近几年来疯狂流行在川渝大地的一种新型健康美食，结合了韩国纸上烤肉和传统烤鱼的特色，研制出的新一代健康烤鱼，一经推向市场便被广大消费者所追捧。据不完全统计，重庆和四川两地，近一两年时间如雨后春笋般的开了上千家纸包鱼餐厅。\n\n    成都上善佳纸上烤鱼摒弃了传统的碳烤方式，以纸代替炭火既无传统餐厅的重油重烟，营养更少流失，鱼肉更加鲜嫩，将食物的健康放在了第一位。加之调料的创新使得其健康、卫生、环保且味道好的特点被食客广为赞誉！', 'list_server.html?id=7', 'http://127.0.0.1:8000/img/ts7.jpg', 150123456789),
(8, 8, '锡纸烤脑花 【2---5天】', '锡纸烤脑花 【2---5天】', ' 锡纸烤脑花是四川地区的一道特色小吃，主要是采用猪脑子，放入各种配料精心调制，用锡箔纸包上之后然后再加以烘烤，用锡纸拷出来的脑花真的香而不腻、油而不腻。', 'list_server.html?id=8', 'http://127.0.0.1:8000/img/ts8.jpg', 150123456789),
(9, 9, '成都冒菜 【2---5天】', '成都冒菜 【2---5天】', ' 冒菜，是一种成都小吃，是将事先切好的各种蔬菜和肉类放入辣味底料汤汁中烫熟后食用。可以用来做冒菜的食材相当丰富，蔬菜类主要有藕、土豆、莴笋、白菜、黄瓜、冬瓜、花菜、木耳、金针菇、平菇、香菇、海带、竹笋、豆腐、豆腐皮、豆芽、红苕粉条、米凉粉等，肉类主要有牛肉、牛毛肚、猪黄喉、鸡鸭胗、兔腰、血旺、鸭肠、火腿肠、鹌鹑蛋、鱿鱼等等。冒菜的底料汤汁类似于火锅，由豆瓣、辣椒、花椒、姜以及各种香辛料在油中炒制，再加入鲜汤熬制而成。制作冒菜时，即将各种配菜装入竹篓或金属筛筐，浸入大锅中正在沸腾的底料汤汁里面煮熟，并往往将竹篓或筛筐在汤汁中上下提动使其均匀受热，此过程即冒菜中“冒”字的含义。冒菜制作完成时，会将煮熟的菜品和一些底料汤汁倒入碗中，同时加入香油、蒜末、葱花、碎芹菜、碎香菜以及盐、味精等各种调味品，即可食用。区别于火锅的地方是：冒菜通常为单人份量，每份冒菜包含搭配好的各种菜品，煮熟的过程由店家完成，盛放的碗中已有调味料故不再需要蘸碟。', 'list_server.html?id=9', 'http://127.0.0.1:8000/img/ts10.jpg', 150123456789),
(10, 10, '【视频学习】 【全国包邮】', '【视频学习】 【全国包邮】', '同样是学习，视频更方便。为了方便比较远的朋友，没时间亲自过来学，也可发快递视频优盘加配方学习，高清视频，非常的详细，内容和现场学是一样的，视频学习和现场来学【价】【格】【是】【一】【样】【的】,优盘的内容是根据你所学项目来拷贝的。\n\n\n\n款到当天发货。\n\n\n\n采用【顺丰】及时发货，全国约2天可到。', 'list_server.html?id=10', 'http://127.0.0.1:8000/img/ts9.jpg', 150123456789);

-- --------------------------------------------------------

--
-- 表的结构 `zw_server_data`
--

CREATE TABLE `zw_server_data` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `img` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_server_data`
--

INSERT INTO `zw_server_data` (`id`, `sid`, `img`) VALUES
(1, 1, 'http://127.0.0.1:8000/img/server/20160721033841747.jpg'),
(2, 1, 'http://127.0.0.1:8000/img/server/20160721033844248.jpg'),
(3, 1, 'http://127.0.0.1:8000/img/server/20160721033858451.jpg'),
(4, 2, 'http://127.0.0.1:8000/img/server/20160508202512_77195.jpg'),
(5, 2, 'http://127.0.0.1:8000/img/server/20170207074921268.jpg'),
(6, 2, 'http://127.0.0.1:8000/img/server/20170207074925401.jpg'),
(7, 3, 'http://127.0.0.1:8000/img/server/20170803070533613.jpg'),
(8, 3, 'http://127.0.0.1:8000/img/server/20160508202646_20519.jpg'),
(9, 3, 'http://127.0.0.1:8000/img/server/20160508202656_47540.jpg'),
(10, 4, 'http://127.0.0.1:8000/img/server/20170516123058822.jpg'),
(11, 4, 'http://127.0.0.1:8000/img/server/20170516123110117.jpg'),
(12, 4, 'http://127.0.0.1:8000/img/server/20170516123116607.jpg'),
(13, 5, 'http://127.0.0.1:8000/img/server/20160721045047351.jpg'),
(14, 5, 'http://127.0.0.1:8000/img/server/20160721045057399.jpg'),
(15, 5, 'http://127.0.0.1:8000/img/server/20160721045107377.jpg'),
(16, 6, 'http://127.0.0.1:8000/img/server/20170904041034733.jpg'),
(17, 6, 'http://127.0.0.1:8000/img/server/20170904041035838.jpg'),
(18, 6, 'http://127.0.0.1:8000/img/server/20170904041036374.jpg'),
(19, 7, 'http://127.0.0.1:8000/img/server/20170507032121679.jpg'),
(20, 7, 'http://127.0.0.1:8000/img/server/20170911060801344.jpg'),
(21, 7, 'http://127.0.0.1:8000/img/server/20170911060927618.jpg'),
(22, 8, 'http://127.0.0.1:8000/img/server/20161016031743902.jpg'),
(23, 8, 'http://127.0.0.1:8000/img/server/20161016031749697.jpg'),
(24, 8, 'http://127.0.0.1:8000/img/server/20161016031808583.jpg'),
(25, 9, 'http://127.0.0.1:8000/img/server/20160515145717_14092.jpg'),
(26, 9, 'img/server/20160515145737_77873.jpg'),
(27, 9, 'img/server/20160515145830_50871.jpg'),
(28, 10, 'img/server/20160721051248424.jpg'),
(29, 10, 'img/server/20170323082958112.jpg');

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
(1, 0, '黑龙江省哈尔滨市张女士', 'http://127.0.0.1:8000/img/xy2.jpg', '#'),
(2, 0, '贵州黔西南饶先生', 'http://127.0.0.1:8000/img/xy5.jpg', '#'),
(3, 0, '吉林长春谢先生', 'http://127.0.0.1:8000/img/xy9.jpg', '#'),
(4, 0, '江西景德镇杨先生', 'http://127.0.0.1:8000/img/xy3.jpg', '#'),
(5, 0, '湖南省永州胡先生', 'http://127.0.0.1:8000/img/xy1.jpg', '#'),
(6, 0, '四川泸州李女士', 'http://127.0.0.1:8000/img/xy4.jpg', '#'),
(7, 0, '内蒙古兴安盟葛先生', 'http://127.0.0.1:8000/img/xy6.jpg', '#'),
(8, 0, '安徽淮北王先生', 'http://127.0.0.1:8000/img/xy7.jpg', '#'),
(9, 0, '广东佛山王先生', 'http://127.0.0.1:8000/img/xy8.jpg', '#');

-- --------------------------------------------------------

--
-- 表的结构 `zw_user`
--

CREATE TABLE `zw_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `upwd` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `avatar` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `zw_user`
--

INSERT INTO `zw_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'llldddmmm', 'e10adc3949ba59abbe56e057f20f883e', '196254664@qq.com', '18357100796', 'http://127.0.0.1:8000/img/nophoto.gif', NULL, 1),
(2, 'bilibli222', 'e10adc3949ba59abbe56e057f20f883e', '196254664@qq.com', '18357100796', 'http://127.0.0.1:8000/img/comment/180x180.jpg', NULL, 1);

--
-- 转储表的索引
--

--
-- 表的索引 `zw_authority`
--
ALTER TABLE `zw_authority`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_comment`
--
ALTER TABLE `zw_comment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_comment_pic`
--
ALTER TABLE `zw_comment_pic`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_environment`
--
ALTER TABLE `zw_environment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_link`
--
ALTER TABLE `zw_link`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_pxxm`
--
ALTER TABLE `zw_pxxm`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_pxxm_family`
--
ALTER TABLE `zw_pxxm_family`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_server`
--
ALTER TABLE `zw_server`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_server_data`
--
ALTER TABLE `zw_server_data`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_student`
--
ALTER TABLE `zw_student`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `zw_user`
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
-- 使用表AUTO_INCREMENT `zw_comment`
--
ALTER TABLE `zw_comment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `zw_comment_pic`
--
ALTER TABLE `zw_comment_pic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `zw_environment`
--
ALTER TABLE `zw_environment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `zw_link`
--
ALTER TABLE `zw_link`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `zw_pxxm`
--
ALTER TABLE `zw_pxxm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `zw_pxxm_family`
--
ALTER TABLE `zw_pxxm_family`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `zw_server`
--
ALTER TABLE `zw_server`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `zw_server_data`
--
ALTER TABLE `zw_server_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用表AUTO_INCREMENT `zw_student`
--
ALTER TABLE `zw_student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `zw_user`
--
ALTER TABLE `zw_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
