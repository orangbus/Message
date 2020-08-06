DROP TABLE IF EXISTS `dedeyun_config`;</explode>
CREATE TABLE `dedeyun_config` (
  `k` varchar(255) NOT NULL,
  `v` text,
  PRIMARY KEY (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;</explode>

INSERT INTO `dedeyun_config` VALUES ('admin_user', 'admin');</explode>
INSERT INTO `dedeyun_config` VALUES ('admin_pwd', '123456');</explode>
INSERT INTO `dedeyun_config` VALUES ('zzqq', '1482222908');</explode>
INSERT INTO `dedeyun_config` VALUES ('title', '在线短信轰炸-By小兔 ');</explode>
INSERT INTO `dedeyun_config` VALUES ('keywords', '短信轰炸,轰炸,炸骗子');</explode>
INSERT INTO `dedeyun_config` VALUES ('description', '本站是一个免费短信轰炸网站');</explode>
INSERT INTO `dedeyun_config` VALUES ('gonggao', '<div class="alert alert-info" role="alert"><span class="glyphicon glyphicon-info-sign"></span> <strong>提示</strong>:输入手机号码点击轰炸按钮即可。</div><div class="alert alert-warning" role="alert"> <i class="glyphicon glyphicon-bullhorn"></i> <strong>公告</strong>:不可用于非法活动本站不承担责任。</div><div class="alert alert-danger" role="alert"> <i class="glyphicon glyphicon-bullhorn"></i> <strong>公告</strong>:官方交流群<a href="http://www.qqsuu.cn/jq.php" class="alert-link">1482222908</a> 欢迎站长加入。</div>');</explode>


DROP TABLE IF EXISTS `dedeyun_kms`;</explode>
CREATE TABLE `dedeyun_kms` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`kind` tinyint(1) NOT NULL DEFAULT '1',
`km` varchar(64) NULL,
`value` int(11) NOT NULL DEFAULT '0',
`isuse` tinyint(1) DEFAULT '0',
`user` varchar(50) DEFAULT NULL,
`usetime` datetime DEFAULT NULL,
`addtime` datetime DEFAULT NULL,
 PRIMARY KEY (`id`),
  KEY (`km`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;</explode>



DROP TABLE IF EXISTS `dedeyun_shop`;</explode>
CREATE TABLE `dedeyun_shop` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`user` varchar(64) NOT NULL,
`pwd` varchar(64) NOT NULL,
`value` int(5) NOT NULL,
`week` int(5) NOT NULL,
`key` varchar(64) NOT NULL,
`addtime` datetime DEFAULT NULL,
`endtime` datetime DEFAULT NULL,
`zt` int(1) NOT NULL default '0',
 PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;</explode>