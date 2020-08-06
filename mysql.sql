

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zichenhz`
--

-- --------------------------------------------------------

--
-- 表的结构 `dedeyun_config`
--

CREATE TABLE IF NOT EXISTS `dedeyun_config` (
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
('title', '在线短信轰炸-小兔博客'),
('keywords', '短信轰炸,轰炸,炸骗子'),
('description', '本站是一个免费短信轰炸网站'),
('gonggao', '<div class="alert alert-info" role="alert"><span class="glyphicon glyphicon-info-sign"></span> <strong>提示</strong>:输入手机号码点击轰炸按钮即可。</div><div class="alert alert-warning" role="alert"> <i class="glyphicon glyphicon-bullhorn"></i> <strong>公告</strong>:不可用于非法活动本站不承担责任。</div><div class="alert alert-danger" role="alert"> <i class="glyphicon glyphicon-bullhorn"></i> <strong>公告</strong>:客服QQ:<a href="http://wpa.qq.com/msgrd?%20v=3&uin=1320374560&site=qq&menu=yes" class="alert-link">518892400</a> 欢迎站长加入。</div>');

-- --------------------------------------------------------

--
-- 表的结构 `dedeyun_kms`
--

CREATE TABLE IF NOT EXISTS `dedeyun_kms` (
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

CREATE TABLE IF NOT EXISTS `dedeyun_shop` (
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
-- Indexes for dumped tables
--

--
-- Indexes for table `dedeyun_config`
--
ALTER TABLE `dedeyun_config`
  ADD PRIMARY KEY (`k`);

--
-- Indexes for table `dedeyun_kms`
--
ALTER TABLE `dedeyun_kms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `km` (`km`);

--
-- Indexes for table `dedeyun_shop`
--
ALTER TABLE `dedeyun_shop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dedeyun_kms`
--
ALTER TABLE `dedeyun_kms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dedeyun_shop`
--
ALTER TABLE `dedeyun_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
