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
				<ul class="side-menu-list">
					<li><a href="http://immumu.com/">首页</a></li>
					<li class="active"><a href="http://immumu.com/focus">看点</a></li>
					<li><a href="http://immumu.com/opinions">观点</a></li>
					<li><a href="http://immumu.com/books">读点</a></li>
					<li><a href="http://immumu.com/products">用点</a></li>
					<li><a href="http://immumu.com/tags">标签</a></li>
					<li><a href="http://immumu.com/photo">图说</a></li>
					<li><a href="http://immumu.com/collections">文集</a></li>
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
							<div class="article-list idx-list">
								<div class="clearfix article-box">
									<a href="http://immumu.com/article/102101/1.html"
										class="a-img" target="_blank"><img
										src="../img//141045690621.png"></a>
									<div class="article-box-ctt">
										<h4>
											<a href="http://immumu.com/article/102101/1.html"
												target="_blank">个人年度观察：致最好的时代</a>
										</h4>
										<div class="box-other">
											<span class="source-quote"><a class="hx-card"
												userid="29318" href="http://immumu.com/member/29318.html"
												target="_blank">阑夕</a></span><a
												href="http://immumu.com/member/29318/authorapply.html"
												target="_blank" class="c-hxrz hxrzzz hxrzzz-level-4"
												title="虎嗅认证作者"></a>
											<time>2014-11-23 14:25:00</time>
											<span class="comment-box"><i class="icon-comment"></i><a
												href="http://immumu.com/comment/102101/1.html"
												target="_blank">7</a></span>
										</div>
										<div class="article-summary">阑夕回顾一年来在虎嗅发十五篇文章的心路及感悟</div>
										<p class="tags-box">
											<span class="toggle-tooltip later-reading-wrap"><a
												href="javascript:void(0);" class="later-reading-btn "
												aid="102101" data-toggle="tooltip" data-placement="top"
												data-original-title="稍后阅读，保存后在微信中也可查看列表.^_^"><i title=""
													data-original-title=""></i></a></span><a
												href="http://immumu.com/tags/10018.html" target="_blank">陈彤</a><a
												href="http://immumu.com/tags/3308.html" target="_blank">罗永浩</a><a
												href="http://immumu.com/tags/3368.html" target="_blank">今日头条</a><a
												href="http://immumu.com/tags/2038.html" target="_blank">自媒体</a>
										</p>
									</div>
								</div>
								
							</div>
							<div class="clearfix pages">
								<div class="pull-right pgs">
									<b>1</b><a href="http://immumu.com/focus/2.html">2</a><a
										href="http://immumu.com/focus/3.html">3</a><a
										href="http://immumu.com/focus/4.html">4</a><span
										class="next"><a
										href="http://immumu.com/focus/2.html">&gt;</a></span><span
										class="end"><a
										href="http://immumu.com/focus/1182.html">&gt;|</a></span>
								</div>
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
</html>
