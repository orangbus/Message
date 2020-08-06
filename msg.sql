-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： mysql
-- 生成日期： 2020-08-06 03:30:16
-- 服务器版本： 5.7.29
-- PHP 版本： 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `msg`
--

-- --------------------------------------------------------

--
-- 表的结构 `dedeyun_config`
--

CREATE TABLE `dedeyun_config` (
  `k` varchar(255) NOT NULL,
  `v` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dedeyun_config`
--

INSERT INTO `dedeyun_config` (`k`, `v`) VALUES
('admin_user', 'admin'),
('admin_pwd', '123456'),
('zzqq', '1482222908'),
('title', '在线短信轰炸-OrangBus'),
('keywords', '短信轰炸,轰炸,炸骗子'),
('description', '本站是一个免费短信轰炸网站'),
('gonggao', '<div class=\"alert alert-info\" role=\"alert\"><span class=\"glyphicon glyphicon-info-sign\"></span> <strong>提示</strong>:输入手机号码点击轰炸按钮即可。</div><div class=\"alert alert-warning\" role=\"alert\"> <i class=\"glyphicon glyphicon-bullhorn\"></i> <strong>公告</strong>:不可用于非法活动本站不承担责任。</div><div class=\"alert alert-danger\" role=\"alert\"> <i class=\"glyphicon glyphicon-bullhorn\"></i> <strong>公告</strong>交流群:<a href=\"https://jq.qq.com/?_wv=1027&k=8Duafusp\" class=\"alert-link\">511300462</a> 欢迎站长加入。</div>'),
('submit', '修改');

-- --------------------------------------------------------

--
-- 表的结构 `dedeyun_kms`
--

CREATE TABLE `dedeyun_kms` (
  `id` int(11) NOT NULL,
  `kind` tinyint(1) NOT NULL DEFAULT '1',
  `km` varchar(64) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `isuse` tinyint(1) DEFAULT '0',
  `user` varchar(50) DEFAULT NULL,
  `usetime` datetime DEFAULT NULL,
  `addtime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dedeyun_shop`
--

CREATE TABLE `dedeyun_shop` (
  `id` int(11) NOT NULL,
  `user` varchar(64) NOT NULL,
  `pwd` varchar(64) NOT NULL,
  `value` int(5) NOT NULL,
  `week` int(5) NOT NULL,
  `key` varchar(64) NOT NULL,
  `addtime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `zt` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `dedeyun_config`
--
ALTER TABLE `dedeyun_config`
  ADD PRIMARY KEY (`k`);

--
-- 表的索引 `dedeyun_kms`
--
ALTER TABLE `dedeyun_kms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `km` (`km`);

--
-- 表的索引 `dedeyun_shop`
--
ALTER TABLE `dedeyun_shop`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dedeyun_kms`
--
ALTER TABLE `dedeyun_kms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `dedeyun_shop`
--
ALTER TABLE `dedeyun_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
