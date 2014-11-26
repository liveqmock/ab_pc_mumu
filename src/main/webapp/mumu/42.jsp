<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>

<html class="no-js">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>文章-目目网</title>
<meta name="google" value="notranslate">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="目目网">
<meta name="keywords" content="科技资讯,商业评论,明星公司动态,宏观趋势,精选,有料,干货,有用,细节,内幕">
<meta name="description" content="虎嗅网是一个有视角的、个性化商业资讯与交流平台，核心关注对象是包括公众公司与创业型企业在内的一系列明星公司">

</head>
<%@ include file="/common/head.jsp"%>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- 模板 -->
<p style="display:none">
    	<textarea id="Template-BOM" rows="0" cols="0">
    	     <li class="active"><a href="/ab_pc_mumu/">首页</a></li>
    	     {#foreach $T as recordTitle begin=0}  
			     <li> <a href="{$T.recordTitle.channel_id}.jsp">{$T.recordTitle.channel_name} </a> </li>
			  {#/for}  
		</textarea>
</p>
 <p style="display:none">
    	 <textarea id="Template_content" rows="0" cols="0">
    	     {#foreach $T.contents as record begin=0}  
			   <div class="clearfix article-box">
									<a href=""
										class="a-img" target="_blank"><img
										src="http://182.92.160.36{$T.record.type_img}"></a>
									<div class="article-box-ctt">
										<h4>
											<a href="http://immumu.com/article/102101/1.html"
												target="_blank">{$T.record.title}</a>
										</h4>
										<div class="box-other">
											<time>{$T.record.release_date}</time>
										</div>
										<div class="article-summary">{$T.record.description}</div>
										
									</div>
								</div>
			  {#/for}  
		</textarea> 
    </p>
<!-- 模板 -->
	<div class="container-hx">
		<div class="top">
			<div class="top-box">
				<h1 class="logo">
					<a href="http://immumu.com/"><img src="../img/mumu_logo.png"></a>
				</h1>
				<div class="login-box">
					
					<div class="btn-group">
						<a href="#lgnModal" data-toggle="modal">登录</a> <a
							href="http://immumu.com/user/register.html">注册</a>
					</div>

					<div class="btn-group">
						<a href="http://immumu.com/rss" title="RSS"><i
							class="icon-rss"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="side-menu-hx">
			<div class="side-menu-top">
				<ul class="side-menu-list" id="side-menu-list_title" class="Content">
				$T.statusText
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
									<a href="http://immumu.com/article/101934/1.html">大战前瞻：决战史上最强贺岁档</a>
								</h2>
								<p>这近60天的时间里，目前定档的已有近40部影片，意味着平均3天就有2部新片上映，密集的时候同一天有5~7部影片上映，堪比绞肉机的战场里，烂片和炮灰弹指间灰飞烟灭</p>
								<div class="box-img">
									<a href="http://immumu.com/article/101934/1.html"><img
										src="../img//000932167704.jpg"></a>
								</div>
								<div class="box-other">
									<span class="toggle-tooltip later-reading-wrap"><a
										href="javascript:void(0);" class="later-reading-btn "
										aid="101934" data-toggle="tooltip" data-placement="top"
										data-original-title="稍后阅读，保存后在微信中也可查看列表.^_^"><i title=""
											data-original-title=""></i></a></span> <span class="source-quote"><a
										class="hx-card" userid="328034"
										href="http://immumu.com/member/328034.html" target="_blank">陈昌业</a><a
										href="http://immumu.com/renzheng.html?#hxtdrz"
										target="_blank" class="c-hxrz hxfwtd" title="虎嗅团队"></a></span>
									<time>2014-11-21 07:25:00</time>
									<span class="comment-box"><i class="icon-comment"></i><a
										href="http://immumu.com/comment/101934/1.html"
										target="_blank">21</a></span> <span class="tags-box"><a
										href="http://immumu.com/tags/2263.html" target="_blank">头条</a><a
										href="http://immumu.com/tags/2989.html" target="_blank">电影</a></span>
								</div>
							</div>
							<div class="article-list idx-list" id="content_list">
								<!-- 模板 -->
								$T.statusText
							</div>
							
						</div>
					</div>
					<div class="side-container-hx">
					
					</div>

				</div>
				<footer class="footer">
					<div class="about-links">
						<a href="http://immumu.com/about.html">关于我们</a>|<a
							href="http://immumu.com/joinus.html">加入我们</a>|<a
							href="http://immumu.com/contact.html">广告及服务</a>|<a
							href="http://immumu.com/help.html">常见问题解答</a>|<a
							href="javascript:void(0);" id="report_brn">提交建议</a>
					</div>
					<div class="footer-copy">
						Copyright © <a href="http://immumu.com/">虎嗅网</a> ( <a
							href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备12013432</a>
						) <a href="http://immumu.com/" class="footer-logo">虎嗅网</a>
					</div>
					<!-- 返回顶部 -->
					<div
						style="display: block; right: 124.5px; position: fixed; bottom: 10px;"
						class="go-top">
						<i class="pos-btn" onclick="window.scrollTo('0', '0')">^</i>
					</div>
					<!-- /返回顶部 -->

				</footer>
			</div>
		</div>
	</div>

	
</body>

				
<script type="text/javascript">
$(document).ready(function(){
	 
	 var url_channel = "../common?urlFlag=1&level=1";
	  $.ajax({
		 url:url_channel,
		 dataType:"json",
		 success:function(data){
				$("#side-menu-list_title").setTemplateElement("Template-BOM");
		        $("#side-menu-list_title").processTemplate(data.data);
		 }
	 }); 
	var url_content = "../common?urlFlag=2&level=1&channelId=43";
	 $.ajax({
		 url:url_content,
		 dataType:"json",
		 success:function(data){
			 
				$("#content_list").setTemplateElement("Template_content");
		        $("#content_list").processTemplate(data.data);
		 }
	 }); 
	 
	});
		
</script>

</html>
