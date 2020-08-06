<?php
include("../php/common.php");
$title='关于程序';
include './head.php';
if($islogin==1){}else exit("<script language='javascript'>window.location.href='./login.php';</script>");
?>
 <nav class="navbar navbar-fixed-top navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">导航按钮</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./">后台管理</a>
      </div><!-- /.navbar-header -->
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="./"><span class="glyphicon glyphicon-user"></span> 平台首页</a>
          </li>
		
		
        
		  <li><a href="./set.php"><span class="glyphicon glyphicon-cog"></span> 系统设置</a></li>
		  <li class="active"><a href="./about.php"><span class="glyphicon glyphicon-tree-deciduous"></span> 关于程序</a></li>
          <li><a href="./login.php?logout"><span class="glyphicon glyphicon-log-out"></span> 退出登陆</a></li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
  </nav><!-- /.navbar -->
  <div class="container" style="padding-top:70px;">
   <div class="col-xs-12 col-sm-10 col-lg-8 center-block" style="float: none;">
  							
		<div class="row">
			<div class="col-md-12">
			<div class="panel panel-info">
					<div class="panel-heading"><span class="glyphicon glyphicon-cog"></span> 关于程序</div>
					<div class="panel-body box">
					<div class="alert alert-warning">本程序是来自小兔博客 仅供学习参考 切勿用于一切非法活动！Qq:1482222908</div>
					<div class="alert alert-success"><font color="green">感谢您来到小兔博客</font><br><font color="red">当前版本：V1.0（公开版）</font></div>
					
					 <a class="btn btn-primary btn-block" type="button"  href="http://nh77.cn/" target="_blank">点击检测更新</a></div>

				
			</div><!--/.col-->
			</div>
		</div><!--/.row-->
				</div> </div>
			
   
</body>
</html>