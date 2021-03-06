<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="org.slf4j.Logger,org.slf4j.LoggerFactory" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%response.setStatus(200);%>

<%
	Throwable ex = null;
	if (exception != null)
		ex = exception;
	if (request.getAttribute("javax.servlet.error.exception") != null)
		ex = (Throwable) request.getAttribute("javax.servlet.error.exception");

	//记录日志
	Logger logger = LoggerFactory.getLogger("500.jsp");
	logger.error(ex.getMessage(), ex);
%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>500 - 系统内部错误</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<meta name="MobileOptimized" content="320">
	<!-- BEGIN GLOBAL MANDATORY STYLES -->          
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN THEME STYLES --> 
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/style.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/pages/error.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}/static/bootstrap-metronic/template_content/assets/css/custom.css" rel="stylesheet" type="text/css"/>
	<!-- END THEME STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-500-full-page">
	<div class="row">
		<div class="col-md-12 page-500">
			<div class=" number">
				500
			</div>
			<div class=" details">
				<h3>系统发生内部错误.</h3>
				<p>
					<a href="<c:url value="/"/>">返回首页</a><br/>
				</p>
			</div>
		</div>
	</div>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   
	<!--[if lt IE 9]>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/respond.min.js"></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/excanvas.min.js"></script> 
	<![endif]-->   
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<script src="${ctx}/static/bootstrap-metronic/template_content/assets/scripts/app.js"></script>  
	<script>
		jQuery(document).ready(function() {    
		   App.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>