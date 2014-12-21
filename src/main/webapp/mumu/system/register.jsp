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
								<form action="/common" method="POST" name="register"
									id="user_register_form">
									<fieldset>
										<legend>注册木木帐号</legend>
										<div class="left-field">
											<table>
												<tr>
													<td>用&nbsp;户 &nbsp;名:</td>
													<td><input name="userName" id="userName" value="用户名"/>
													<input type="hidden" name="urlFlag" id="urlFlag" value="4"/>
													</td>
												</tr>
												<tr>
													<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
													<td><input name="passWord" id="passWord" value="密码"/></td>
												</tr>
												<tr>
													<td>确认密码:</td>
													<td><input name="passWordR" id="passWordR" value="确认密码"/></td>
												</tr>
											</table>
											<!-- <div class="hxValidator-field">
												<label for="username"><i
													class="register-icons label-icon icon-white-user"
													title="用户名"></i></label> <input name="username"
													data-required="true" data-not-all-number="true"
													data-max-length="30" data-min-length="3"
													data-username-unique-remote="true" id="username"
													placeholder="用户名" type="text"> <span
													style="display: none;" class="hints">3-30位字符，中英文、数字和常用符号</span>
												<i class="register-icons icon"></i> <span
													class="errors error-txt"></span>
											</div> -->
														
											
											<div>
												<p class="user-agreement">
													点击注册按钮表示您已同意并接受<a href="javascript:void(0);"
														class="user-memo-btn" onclick="shouDemo();">《木木网用户使用协议》</a>
												</p>
												<input type="button" class="btn btn-primary" onclick="mumuRegist();" value="注册"></input>
											</div>
											<div id="user_memo">
												<dl>
													<dt>用户注册协议</dt>
													<dd>用户应认真阅读本《协议》中各条款，
														包括免除或者限制木木网帐号的免责条款及对用户的权利限制。请您审阅并接受或不接受本《协议》（未成年人应在法定监护人陪同下审阅）。除非您接受本《协
														议》条款，否则您无权注册为本站会员。您的注册、使用行为将视为对本《协议》的接受，并同意接受本
														《协议》各项条款的约束。</dd>
													<dd>本网站提倡实名注册。如发现注册帐号中含有不雅文字或不恰当名称的会员，本网站保留取消其会员资格的权利。用户使用本网站时，必须遵守以下原则：</dd>
													<dd>1. 请勿以党和国家领导人或其他社会名人的真实姓名、字号、艺名、笔名注册;</dd>
													<dd>2. 请勿以国家机构或其他机构的名称注册;</dd>
													<dd>3. 请勿注册和其他网友之名相近、相仿的名字;</dd>
													<dd>4. 请勿注册不文明、不健康名字，或包含歧视、侮辱、猥亵类词语的名字;</dd>
													<dd>5. 请勿注册易产生歧义、引起他人误解的名字。</dd>
													<dd>6.
														保护用户隐私是本网站的一项基本政策，本网站保证不对外公开或向第三方提供用户注册资料及用户在使用网络服务时存储在本网站的非公开内容，但以下情况除外：</dd>
													<dd>a) 用户本人授权网站透露这些信息;</dd>
													<dd>b) 相关的法律及程序要求予以披露的;</dd>
													<dd>c) 按照相关政府主管部门的要求予以披露的。</dd>
													<dd>7.
														本网站会员有权依照操作流程上传发表作品(作品包括不限于个人观点看法，数据，文字，信息，用户名，图片，照片，个人信息，音频视频文件和链接等)。会员
														发表的作品不得侵害第三方利益。若会员作品损害第三方权益的，任何法律责任由该作品在本网站的发表者个人负责，本网站仅负责接收到权利人通知后的删除义务
														并不对任何第三方负责。</dd>
													<dd>8.
														凡向木木投稿或在木木产品上发表内容，即视为作者自愿同意：木木有权利以任何形式（包括但不限于纸媒体、网络、光盘等介质）编辑、修改、出版和使用该作品，而无须另行征得作者同意，亦无须另行支付稿酬以及任何形式的报酬。</dd>
													<dd>9. 本网站会员有义务对违法违规行为进行举报。</dd>
													<dd>10. 本网站会员必须遵守国家法律、法规和本社区各项规章制度。</dd>
													<dd>11. 本网站会员应义务遵守网络礼仪。</dd>
													<dd>12. 严禁违反宪法确定的基本原则</dd>
													<dd>13. 严禁危害国家安全、泄露国家秘密、颠覆国家政权、破坏国家统一。</dd>
													<dd>14. 严禁煽动民族仇恨、民族歧视、破坏民族团结。</dd>
													<dd>15. 严禁破坏国家宗教政策，宣扬邪教和封建迷信。</dd>
													<dd>16. 严禁散布谣言、扰乱社会秩序、破坏社会稳定。</dd>
													<dd>17. 严禁散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪。</dd>
													<dd>18. 严禁侮辱或者诽谤他人，侵害他人合法权益。</dd>
													<dd>19. 严禁煽动非法集会、结社、游行、示威、聚众扰乱社会秩序。</dd>
													<dd>20. 严禁以非法民间组织名义活动。</dd>
													<dd>21. 严禁含有法律、行政法规禁止的其他内容。</dd>
													<dd>22.
														严禁发布可能会妨害第三方权益的文件或者信息，例如(包括但不限于)：病毒代码、黑客程序、软件破解注册信息。</dd>
													<dd>23. 严禁抄袭及剽窃他人作品，禁止转载或引用涉及版权问题的文章。</dd>
													<dd>24. 禁止未经网站允许发布广告。</dd>
													<dd>25.
														严禁利用本网站提供的网络服务上传、展示或传播任何虚假的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、庸俗淫秽的或其他任何非法的信息资料。</dd>
													<dd>26. 严禁破坏网站公共秩序及侵害网站利益的其他内容。</dd>
													<dd>请务必仔细阅读本服务协议，接受本网站服务表明您认可本网站所有协议所规定的一切内容（包括但不限于以上声明）。</dd>
													<dd>木木网</dd>
												</dl>
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
	function shouDemo()
	{
		$("#user_memo").show();
		$("#user_memo").height("260");
	}
	function mumuRegist()
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
					 alert("注册成功");
					 location.href = "/index.jsp";
					}
					
			 }
		 });
	}
</script>

</html>
