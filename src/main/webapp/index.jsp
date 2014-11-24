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
   		<title>MuMu_pc首页</title>
     <meta name="google" value="notranslate">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
     <meta name="author" content="木木网">
     <meta name="keywords" content="科技资讯,商业评论,明星公司动态,宏观趋势,精选,有料,干货,有用,细节,内幕">
     <meta name="description" content="木木网是一个有视角的、个性化商业资讯与交流平台，核心关注对象是包括公众公司与创业型企业在内的一系列明星公司">
     <link rel="shortcut icon" href="img/mumu.ico" type="image/x-icon">
	 <link rel="icon" href="img/mumu.ico" type="image/x-icon">
	 <link href="css/bootstrap.css" rel="stylesheet">
	 <link href="css/hx-2013.css" rel="stylesheet">
	 <script src="js/common/jquery-2.1.1.min.js" charset="utf-8"></script> 
	 <script src="js/common/jquery-jtemplates.js" charset="utf-8"></script>
 </head>
<body data-spy="scroll" data-target=".bs-docs-sidebar" onload="">
	<!-- jstemplate模板 -->
	<p style="display:none">
    	<textarea id="Template-BOM" rows="0" cols="0">
    	     {#foreach $T as record begin=0}  
			     <li> <a href="">{$T.record.channelName} </a> </li>
			  {#/for}  
		</textarea>
    </p>
    <p style="display:none">
    	<%-- <textarea id="Template_content" rows="0" cols="0">
    	     {#foreach $T.contents as record begin=0}  
			    <div class="clearfix article-box ">
									<a href="${record.url}" class="a-img" target="_blank"><img
										src="${record.typeImg!site.defImg}" alt="${record.title}"></a>
									<div class="article-box-ctt">
										<h4>
											<a href="http://www.huxiu.com/article/45628/1.html"
												target="_blank">虎扯：我为什么不写软文了</a>
										</h4>
										<div class="box-other">
											<span class="source-quote"><a class="hx-card"
												userid="43670" href="http://www.huxiu.com/member/43670.html"
												target="_blank">伯通</a><a
												href="http://www.huxiu.com/member/43670/authorapply.html"
												target="_blank" class="c-hxrz hxrzzz hxrzzz-level-3"
												title="虎嗅认证作者"></a></span>
											<time>2014-10-30 18:23:00</time>
										</div>
										<div class="article-summary">软文没有错，公关没有错，但这个在中国互联网业还处于摸索阶段的业务模式，对大多数人而言实在是一种侮辱。</div>

										<p class="tags-box">
											<a href="http://www.huxiu.com/tags/3944.html" target="_blank">虎扯</a><a
												href="http://www.huxiu.com/tags/357.html" target="_blank">投稿</a><i
												class="i-icon-bottom"></i>
										</p>
									</div>
									<div class="idx-hldj">
										<div class="article-icon">
											<span class="toggle-tooltip later-reading-wrap"><a
												href="javascript:void(0);" class="later-reading-btn "
												aid="45628" data-toggle="tooltip" data-placement="top"
												data-original-title="稍后阅读，保存后在微信中也可查看列表.^_^"><i title=""
													data-original-title=""></i></a></span><span class="comment-box"><i
												class="icon-comment"></i><a
												href="http://www.huxiu.com/comment/45628/1.html#odby"
												target="_blank">3</a></span>

										</div>
									</div>

									<!--  [@text_cut s=a.title len=titLen /] -->

								</div>
			  {#/for}  
		</textarea> --%>
    </p>
<!-- jstemplate模板 -->
	<div class="container-hx">
		<div class="top">
			<div class="top-box">
				<h1 class="logo">
					<a href="http://immumu.com/"><img
						src="img/mumu_logo.png"></a>
				</h1>
				<div class="login-box">
					<div class="btn-group">
					
					</div>
					<div class="btn-group">
						<a href="#lgnModal" data-toggle="modal">登录</a> <a
							href="http://www.huxiu.com/user/register.html">注册</a>
					</div>

				</div>
			</div>
		</div>
		<div class="side-menu-hx">
			<div class="side-menu-top">
				<ul class="side-menu-list" id="side-menu-list_title" class="Content">$T.statusText
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
		<div class="row-fluid-wrap-hx">
			<div class="center-container-hx">
				<div class="clearfix row-fluid-hx">
					
					<div class="center-ctr-wrap">
						<div class="center-ctr-box">
							<div class="toutiao idx-toutiao">

								<h2>
									<a href="http://www.huxiu.com/article/45601/1.html"
										target="_blank">顺流逆流？芒果TV半年回访：视频网站是场Big game</a>
								</h2>
								<p>那个叫作“盈利”的童话，离芒果TV有多远？</p>
								<div class="box-img">
									<a href="http://www.huxiu.com/article/45601/1.html"
										target="_blank"><img
										src="img/071356jgzqw0gygw0m5gk6.jpg"></a>
								</div>
								<div class="box-other">
									<span class="toggle-tooltip later-reading-wrap"><a
										href="javascript:void(0);" class="later-reading-btn "
										aid="45601" data-toggle="tooltip" data-placement="top"
										data-original-title="稍后阅读，保存后在微信中也可查看列表.^_^"><i title=""
											data-original-title=""></i></a></span> <span class="source-quote"><a
										class="hx-card" userid="204662"
										href="http://www.huxiu.com/member/204662.html" target="_blank">李拓</a><a
										href="http://www.huxiu.com/renzheng.html?#hxtdrz"
										target="_blank" class="c-hxrz hxfwtd" title="虎嗅团队"></a></span>
									<time>2014-10-30 07:27:00</time>
									<span class="comment-box"><i class="icon-comment"></i><a
										href="http://www.huxiu.com/comment/45601/1.html"
										target="_blank">7</a></span> <span class="tags-box"><a
										href="http://www.huxiu.com/tags/4126.html" target="_blank">芒果TV</a><a
										href="http://www.huxiu.com/tags/511.html" target="_blank">视频</a><a
										href="http://www.huxiu.com/tags/2263.html" target="_blank">头条</a></span>
								</div>


							</div>


							<div class="article-list idx-list" id="article-list-content" class="content">
							
<%-- 
								[@cms_content_list count='5' orderBy='4' typeId='3' titLen='18'
								channelOption='1' channelId='1'] [#list tag_list as a]
								<div class="clearfix article-box ">
									<a href="${a.url}" class="a-img" target="_blank"><img
										src="${a.typeImg!site.defImg}" alt="${a.title}"></a>
									<div class="article-box-ctt">
										<h4>
											<a href="http://www.huxiu.com/article/45628/1.html"
												target="_blank">虎扯：我为什么不写软文了</a>
										</h4>
										<div class="box-other">
											<span class="source-quote"><a class="hx-card"
												userid="43670" href="http://www.huxiu.com/member/43670.html"
												target="_blank">伯通</a><a
												href="http://www.huxiu.com/member/43670/authorapply.html"
												target="_blank" class="c-hxrz hxrzzz hxrzzz-level-3"
												title="虎嗅认证作者"></a></span>
											<time>2014-10-30 18:23:00</time>
										</div>
										<div class="article-summary">软文没有错，公关没有错，但这个在中国互联网业还处于摸索阶段的业务模式，对大多数人而言实在是一种侮辱。</div>

										<p class="tags-box">
											<a href="http://www.huxiu.com/tags/3944.html" target="_blank">虎扯</a><a
												href="http://www.huxiu.com/tags/357.html" target="_blank">投稿</a><i
												class="i-icon-bottom"></i>
										</p>
									</div>
									<div class="idx-hldj">
										<div class="article-icon">
											<span class="toggle-tooltip later-reading-wrap"><a
												href="javascript:void(0);" class="later-reading-btn "
												aid="45628" data-toggle="tooltip" data-placement="top"
												data-original-title="稍后阅读，保存后在微信中也可查看列表.^_^"><i title=""
													data-original-title=""></i></a></span><span class="comment-box"><i
												class="icon-comment"></i><a
												href="http://www.huxiu.com/comment/45628/1.html#odby"
												target="_blank">3</a></span>

										</div>
									</div>

									<!--  [@text_cut s=a.title len=titLen /] -->

								</div>
								[/#list] [/@cms_content_list] --%>

								<div class="idx-more">
									<a class="a-more-idx"
										href="http://www.huxiu.com/focus.html?more=1" target="_blank">更多</a>
								</div>
							</div>
						</div>
					</div>
					
					<div class="side-container-hx">
								
					</div>
				</div>
				<footer class="footer">
				<div class="about-links">
					<a href="http://immumu.com/">关于我们</a>|<a
						href="http://immumu.com/">加入我们</a>|<a
						href="http://immumu.com/">广告及服务</a>|<a
						href="http://immumu.com/">常见问题解答</a>|<a
						href="http://immumu.com/">提交建议</a>
				</div>
				
				<div class="footer-copy">
					Copyright © <a href="http://immumu.com/">木木网</a> ( <a
						href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备12013432</a>
					) <a href="http://immumu.com/" class="footer-logo">木木网</a>
				</div>
				</footer>
			</div>
		</div>
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
	/* var url_content = "common?urlFlag=2&level=1&channelId=1";
	 $.ajax({
		 url:url_content,
		 dataType:"json",
		 success:function(data){
			 alert(data.data);
				$("#article-list-content").setTemplateElement("Template_content");
		        $("#article-list-content").processTemplate(data.data);
		 }
	 }); */
	 
	});
		
</script>

</html>
	