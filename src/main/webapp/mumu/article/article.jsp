<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>看点-木木网</title>
<meta name="google" value="notranslate">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="虎嗅网">
<meta name="keywords" content="科技资讯,商业评论,明星公司动态,宏观趋势,精选,有料,干货,有用,细节,内幕">
<meta name="description"
	content="对于“入场费”、“维护费”等众多物业收费环节，以及千兆宽带的定义和检测标准，都需要监管部门进行法规并落实监管。否则对于国内用户而言，千兆宽带仍然是一场镜花水月。‍">

</head>
<%@ include file="../common/head.jsp"%>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- 模板 -->
<p style="display:none">
    	<textarea id="Template-BOM" rows="0" cols="0">
    	     {#foreach $T as recordTitle begin=0}  
			     <li> <a href="/mumu/title/{$T.recordTitle.channel_id}.jsp">{$T.recordTitle.channel_name} </a> </li>
			  {#/for}  
		</textarea>
</p>
<p style="display:none">
    	<textarea id="Template_content" rows="0" cols="0">
    	     {#foreach $T as recordContent begin=0 count=1} 
    	     	 <h1>{$T.recordContent.title}</h1>

								<div class="subtitle-h1"></div>
								<div class="neirong-other">
									<time id="pubtime_baidu">{$T.recordContent.release_date}</time>
									
								</div>
								<!--文章备注信息-->
								<!-- 管理2 -->
								<!-- /管理2 -->
								
								<div class="neirong-box" id="neirong_box">
									<table>
										<tbody>
											<tr>
												<td><!-- <span class="span-img"><img
														src="mumunew_files/182425526672.jpg"
														alt="民营企业力推“千兆宽带”，靠谱吗？"></span> -->
												<div>
														<p><strong>{$T.recordContent.title}</strong></p>
														<p>{$T.recordContent.description}</p>
												</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="clearfix pages">
									<div class="pull-right pgs"></div>
								</div>
								<!-- 分享 -->
								<div style="position: relative; display: block; bottom: 0px;"
									class="share-wrap" id="share_wrap">
									<div class="share-wrap-box">
										<div class="manage-box1">
											<div class="like-box">
												<i class="pos-btn" title="喜欢" opt="aid" aid="102440"
													id="like">2</i>
											</div>
											<div class="favorite-box">
												<i class="pos-btn" title="收藏" aid="102440" id="favorite">5</i>
											</div>
											<div class="nolike-box">
												<i class="pos-btn" title="没劲" opt="aid" aid="102440"
													id="nolike">0</i>
											</div>
										</div>
								      </div>
								</div>
								<!-- /分享 -->
								<!-- 管理2 -->
								<!-- /管理2 -->

								<div class="neirong-btm">
									<div class="hx-erweima">
										<a href="http://www.huxiu.com/weixin.html" target="_blank"
											class="pull-right hx-erweima-img"><img
											src="mumunew_files/nr_erweima_weixin.png" border="0"></a>
									</div>
								</div>
			 {#/for}  
		</textarea>
</p>
<!-- 模板 -->
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
					
					<div class="center-ctr-wrap" aid="102440">
						<div class="center-ctr-box">
							<div class="clearfix neirong"  id="mumu_content">
								
							</div>

							<!-- 管理 -->
							<div
								style="display: block; right: 174.5px; position: fixed; bottom: 70px;"
								class="position-wrap" id="position_wrap"></div>
							<!-- /管理 -->




							<!-- 评论 -->
							
							<!-- 评论/ -->
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
	var contentId = "<%=request.getParameter("contetId")%>";
	var url_content = "/common?urlFlag=3&content_Id="+contentId;
	
	$.ajax({
		 url:url_content,
		 dataType:"json",
		 success:function(data_){
			 	$("#mumu_content").setTemplateElement("Template_content");
		        $("#mumu_content").processTemplate(data_.data);
		 }
	 });
	 
	});
		
</script>
</html>