<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<base href="<%=basePath%>">
<title>木木网</title>
<meta name="google" value="notranslate">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="木木网">
<meta name="keywords" content="化妆品，">
<meta name="description"
	content="目目网是一个有视角的、个性化商业资讯与交流平台，核心关注对象是包括公众公司与创业型企业在内的一系列明星公司">
<%@ include file="/mumu/common/head.jsp"%>
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
	<!-- jstemplate模板 -->
	<p style="display: none">
		<textarea id="Template-BOM" rows="0" cols="0">
    	     {#foreach $T as record begin=0}  
			     <li> <a href="/mumu/title/{$T.record.channel_id}.jsp">{$T.record.channel_name} </a> </li>
			  {#/for}  
		</textarea>
	</p>
	
	<!-- jstemplate模板 -->
	<div class="container-hx">
		<%@ include file="/mumu/common/top.jsp"%>
		<div class="side-menu-hx">
			<div class="side-menu-top">
				<ul class="side-menu-list" id="side-menu-list_title" class="Content">

				</ul>
			</div>
			<div class="search">
				<form action="/search.html" method="get" class="form-search">
					<input name="s" id="s" class="input-text" placeholder="搜索"
						type="text">
					<button class="search-btn">
						<i class="icon-search"></i>
					</button>
				</form>
			</div>
		</div>
		<!-- start -->
		<div class="row-fluid-wrap-hx">
			<div class="center-container-hx">
				<div class="clearfix row-fluid-hx">
					<div class="center-column-wrap">
						<div class="center-column-box">
							<div class="column-content-wrap" id="user_register">
								<form action="/common" method="POST" name="login"
									id="user_login_form">
									<fieldset>
										<legend>登陆木木帐号</legend>
										<div class="left-field">
											<table>
												<tr>
													<td>用&nbsp;户 &nbsp;名:</td>
													<td>
													<input type="hidden" name="urlFlag" id="urlFlag" value="5"/>
													<input name="userName" id="userName" value="用户名"/></td>
												</tr>
												<tr>
													<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
													<td><input name="passWord" id="passWord" value="密码"/></td>
												</tr>
											</table>
											<div>
												<input type="button" class="btn btn-primary" onclick="mumuLogin();" value="登陆"></input>
											</div>
											
										</div>
										<div class="right-field">
											<p>您也可以使用第三方帐号登录:</p>
											<ul class="auth-login unstyled">
												<li><a
													href="http://www.huxiu.com/user/oauth_login/sina.html?&amp;backurl=http://www.huxiu.com/user/register.html"
													class="weibo-lgn"></a></li>
												<li><a
													href="http://www.huxiu.com/user/oauth_login/qq.html?&amp;backurl=http://www.huxiu.com/user/register.html"
													class="qq-lgn"></a></li>
											</ul>
										</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</div>
				<%@ include file="/mumu/common/footer.jsp"%>
			</div>
		</div>
		<!--  end -->

	</div>


</body>

<script type="text/javascript">
$(document).ready(function(){
	 
	 var url_channel = "common?urlFlag=1&level=1";
	 $.ajax({
		 url:url_channel,
		 dataType:"json",
		 success:function(data){
				$("#side-menu-list_title").setTemplateElement("Template-BOM");
		        $("#side-menu-list_title").processTemplate(data.data);
		 }
	 });
		 
	});
		
</script>
<script type="text/javascript">
	function mumuLogin()
	{
		var urlFlag = $("#urlFlag").val();
		var userName = $("#userName").val();
		var passWord = $("#passWord").val();
		var url_login = "/common?urlFlag="+urlFlag+"&userName="+userName+"&passWord="+passWord
		 $.ajax({
			 url:url_login,
			 dataType:"json",
			 success:function(data){
				 var state = data.statusText;
				 var status = data.status;
				 if(200 == status)
					{
					 alert("登陆成功");
					 location.href = "/index.jsp";
					}
					
			 }
		 });
	}
</script>

</html>
