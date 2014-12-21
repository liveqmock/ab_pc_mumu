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
<title>文章-木木网</title>
<meta name="google" value="notranslate">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="目目网">
<meta name="keywords" content="科技资讯,商业评论,明星公司动态,宏观趋势,精选,有料,干货,有用,细节,内幕">
<meta name="description" content="虎嗅网是一个有视角的、个性化商业资讯与交流平台，核心关注对象是包括公众公司与创业型企业在内的一系列明星公司">

</head>
<%@ include file="/mumu/common/head.jsp"%>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- jstemplate模板 -->
	<p style="display:none">
    	<textarea id="Template-BOM" rows="0" cols="0">
    	     {#foreach $T as record begin=0}  
			     <li> <a href="/mumu/title/{$T.record.channel_id}.jsp">{$T.record.channel_name} </a> </li>
			  {#/for}  
		</textarea>
    </p>
   <p style="display:none">
    	 <textarea id="Template_content" rows="0" cols="0">
    	 {#foreach $T.contents as record begin=0 count=1}
    	 <div class="toutiao idx-toutiao">
								<h2>
									<a href="/common?urlFlag=0&contetId={$T.record.content_id}"
										target="_blank">{$T.record.title}</a>
								</h2>
								<p>{$T.record.title}</p>
								<div class="box-img">
									<a href="/common?urlFlag=0&contetId={$T.record.content_id}"
										target="_blank"><img
										src="{$T.record.type_img}"></a>
								</div>
		</div>
		{#/for}
		<div class="article-list idx-list" id="content_list">
			{#foreach $T.contents as record begin=1}  
			   <div class="clearfix article-box">
									<a href="/common?urlFlag=0&contetId={$T.record.content_id}"
										class="a-img" target="_blank"><img
										src="{$T.record.type_img}"></a>
									<div class="article-box-ctt">
										<h4>
											<a href="/common?urlFlag=0&contetId={$T.record.content_id}"
												target="_blank">{$T.record.title}</a>
										</h4>
										<div class="box-other">
											<time>{$T.record.release_date}</time>
										</div>
										<div class="article-summary">{$T.record.description}</div>
										
									</div>
								</div>
			 {#/for}  
		</div>
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
		<div class="row-fluid-wrap-hx">
			<div class="center-container-hx">
				<div class="clearfix row-fluid-hx">
					
					<div class="center-ctr-wrap">
						<div class="center-ctr-box" id="center-ctr-box">
							
	
							
						</div>
					</div>
					
					<div class="side-container-hx">
								
					</div>
				</div>
				<%@ include file="/mumu/common/footer.jsp"%>
			</div>
		</div>
	</div>

</body>	
<script type="text/javascript">
$(document).ready(function(){
	 
	 var url_channel = "/common?urlFlag=1&level=1";
	  $.ajax({
		 url:url_channel,
		 dataType:"json",
		 success:function(data){
				$("#side-menu-list_title").setTemplateElement("Template-BOM");
		        $("#side-menu-list_title").processTemplate(data.data);
		 }
	 }); 
	var url_content = "/common?urlFlag=2&level=1&channelId=1";
	 $.ajax({
		 url:url_content,
		 dataType:"json",
		 success:function(data){
			 
			 	$("#center-ctr-box").setTemplateElement("Template_content");
		        $("#center-ctr-box").processTemplate(data.data);
		 }
	 }); 
	 
	});
		
</script>

</html>
