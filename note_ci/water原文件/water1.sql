-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 02 月 08 日 02:24
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `water1`
--

-- --------------------------------------------------------

--
-- 表的结构 `w_admin`
--

CREATE TABLE IF NOT EXISTS `w_admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `adminname` varchar(20) NOT NULL COMMENT '管理员账号',
  `adminpwd` varchar(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `w_admin`
--

INSERT INTO `w_admin` (`id`, `adminname`, `adminpwd`) VALUES
(1, 'water', '5abd06d6f6ef0e022e11b8a41f57ebda');

-- --------------------------------------------------------

--
-- 表的结构 `w_gb`
--

CREATE TABLE IF NOT EXISTS `w_gb` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `textime` int(11) unsigned NOT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='留言表' AUTO_INCREMENT=148 ;

--
-- 转存表中的数据 `w_gb`
--

INSERT INTO `w_gb` (`id`, `name`, `tel`, `addr`, `content`, `textime`) VALUES
(90, 'Blog_Water', '33333333333', '人在天涯无归处', '断然人', 1389513938),
(91, '余水升', '13480275394', '广州市天河区燕塘', '我坚毅果敢，对目标一致，大气，端方', 1389518222),
(92, '詹俊杰', '13452036210', '番禹大石', '一个小白脸，很欠揍,哈哈', 1389518289),
(94, '何泽洲', '13450213654', '广州天河武警医院', '我的爱人天下', 1389520466),
(95, '詹俊杰', '13452036210', '番禹大石', 'asdfasdf', 1389608674),
(96, '程涛f', '13420212564', '江西南昌', '阿斯顿发生', 1389692602),
(97, '菲菲', '13480275394', '广州市天河区燕塘', '烦烦烦', 1389693832),
(99, '', '', '', '', 1389775418),
(100, '', '', '', '', 1389775438),
(101, '', '', '', '', 1389775442),
(103, '', '', '', '', 1389775514),
(105, '', '', '', '', 1389775979),
(106, '', '', '', '', 1389776012),
(107, '陈良子', '18789383838', 'asdfas', 'asdfas', 1389776026),
(108, '', '', 'asdfas', '', 1389776064),
(111, '', '', 'asdfas', 'asdfas', 1389776154),
(112, '', '', 'asdfas', 'asdfas', 1389776194),
(113, '', '', 'asdfas', 'asdfas', 1389776232),
(114, '', '', '', 'sdgdsf', 1389776235),
(115, 'asdf', '13480275394', '', '', 1389776643),
(116, '余水升', '13480275394', 'asdfaasfsadfasd', 'asdfasdf', 1389777689),
(117, '詹俊杰', '13480275394', '广州市天河区燕塘asdf', 'asdfdasf', 1389778065),
(118, '俊杰', '13542102145', '天河区燕玲路89号大石', '阿斯顿发斯蒂芬是', 1389778109),
(119, '余水升fff', '13480275394', '天河区燕玲路89号fff', 'asdfasdfasdf', 1389778320),
(120, '余水升', '13480275394', '天河区燕玲路89号fff', 'asdfasdfasdf', 1389778351),
(121, '余水升', '13480275394', '天河区燕玲路89号fff', 'asdfasdfasdf', 1389778368),
(122, 'water', '13450215642', 'asdfasfdsad', 'asdfasdfasdf', 1389778470),
(123, '123123', '13111111111', '7489456415641', '45645645645645646546', 1389778499),
(124, 'water', '13450215642', 'asdfasfdsad', 'asdfasdfasdf', 1389779000),
(125, '123123', '13111111111', '7489456415641', '45645645645645646546', 1389779023),
(126, 'PHP后台', '13480275394', 'asfdasdfasdfsadf', 'asdfsdafsadasdfsadf', 1389779128),
(127, '余水升', '13480275394', '天河区燕玲路89号fff', 'asdfasdfasdf', 1389779338),
(130, 'yofee', '13345678909', '燕塘企业98号撒的发覆盖', '索拉卡大陆上', 1389833626),
(131, 'hello', '13542102145', '天河区燕玲路89号fff', '222asdfasdfasfasdf', 1389833742),
(132, 'xxfdafsd', '13566778899', '广东省广州市黄埔大道', '这个是waterson的留言本', 1389845067),
(133, 'testsss', '13452036520', 'testtesttesttesttest', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttestte', 1389845456),
(134, '俊杰', '13542102145', '广州市天河区燕玲路89号', '烦烦烦', 1389853751),
(135, 'admin', '13450278452', '深圳市宝安区大良镇90号', '方法反反复复反反复复反反复复反反复复反反复复反反复复搜索', 1389854422),
(137, '123123', '13111111111', '7489456415641', 'fdsartwqetfr', 1389863449),
(138, 'test', '15200000000', '地址地址地址地址地址地址', '留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容', 1389940365),
(139, 'test', '15200000000', '地址地址地址地址地址地址', '留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容', 1389940376),
(140, 'test', '15200000000', '地址地址地址地址地址地址', '留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容留言内容', 1389940378),
(142, '梁海青', '13423529855', 'sdafasdfsadfsadf', 'asdfsdafsdafsdfsd', 1389971192),
(144, 'zxv xv f b', '18701234556', 'dsvfdvbgfbghnhgn', 'bfgnghnhgjmmnhjmjh,nghmhj,mmjk,kj', 1390663575),
(146, 'wate  ', '13620202020', '师傅的说法师傅的说法', '是范德萨发的是非得失的说法', 1390721192),
(147, 'dfsadf', '13923423432', 'fsadfsadfdsa', 'dsafdsasadfsadfdsafsad', 1390919623);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
