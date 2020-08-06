<?php
error_reporting(0);
define('IN_CRONLITE', true);
define('VERSION', '1001');
define('SYSTEM_ROOT', dirname(__FILE__).'/');
define('ROOT', dirname(SYSTEM_ROOT).'/');
define('SYS_KEY', 'quanquan');
define('CC_Defender', 1); //防CC攻击开关(1为session模式)

date_default_timezone_set("PRC");
$date = date("Y-m-d H:i:s");
session_start();

if(CC_Defender!=0)
	include_once SYSTEM_ROOT.'security.php';

require ROOT.'config.php';
$siteurl = ($_SERVER['SERVER_PORT'] == '443' ? 'https://' : 'http://') . $_SERVER['HTTP_HOST'] . $sitepath . '/';
if(!$dbconfig['user']||!$dbconfig['pwd']||!$dbconfig['dbname'])//检测安装
{
header('Content-type:text/html;charset=utf-8');
exit("<script language='javascript'>alert('你还没安装！');window.location.href='./install/';</script>");
}

//连接数据库
include_once(SYSTEM_ROOT."db.class.php");
$DB=new DB($dbconfig['host'],$dbconfig['user'],$dbconfig['pwd'],$dbconfig['dbname'],$dbconfig['port']);

if($DB->query("select * from dedeyun_config where 1")==FALSE)//检测安装2
{
header('Content-type:text/html;charset=utf-8');
exit("<script language='javascript'>alert('你还没安装！');window.location.href='./install/';</script>");
}

$rs=$DB->query("select * from dedeyun_config");
while($row=$DB->fetch($rs)){ 
	$conf[$row['k']]=$row['v'];

}


include_once(SYSTEM_ROOT."function.php");

include_once(SYSTEM_ROOT."member.php");