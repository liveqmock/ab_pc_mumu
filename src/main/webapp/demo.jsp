<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="app_lenovo">
  	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    	<title>木木媒体</title>
    	<meta name="description" content="木木媒体" />
		<meta name="keywords" content="木木媒体" />
   		<%@include file="./include/includes.jsp"%>
		
		<script type="text/javascript">
			$(document).ready(function() {
				var url = "path?plat=1&key_url=KEY_CHANNEL_ALL&level=1&debug";
				$.getJSON(url, function(data) {
			        $("#ItemBOM").setTemplateElement("Template-BOM");
			        $("#ItemBOM").processTemplate(data);
			      });
				});
		</script>
</head>

<body>
	<%@include file="./include/header.jsp"%>
    <p style="display:none">
    	<textarea id="Template-BOM" rows="0" cols="0">
    		 <table border="0" cellpadding="3" cellspacing="1" width="100%" align="center" style="background-color: #b9d8f3;">
			    <thead>  
			        <tr>  
			            <td>channel_Id</td>  
			            <td>channel_name</td>  
			            <td>has_content</td>  
			            <td>priority</td>  
			            <td>is_display</td>  
			        </tr>  
			    </thread>  
			    <tbody>  
			        {#foreach $T.data as record begin=0}  
			        <tr>  
			            <td>{$T.record.channel_Id}</td>  
			            <td>{$T.record.channelName}</td>  
			            <td>{$T.record.has_content}</td>  
			            <td>{$T.record.priority}</td>  
			            <td>{$T.record.isDisplay}</td>  
			        </tr>  
			        {#/for}  
			    </tbody>  
			</table>  
    	</textarea>
    </p>
  	<div id="ItemBOM" class="Content">$T.statusText</div>
	<%@include file="./include/footer.jsp"%>
</body>
</html>
