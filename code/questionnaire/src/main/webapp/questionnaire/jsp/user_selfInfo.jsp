<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.User" %>
<!DOCTYPE html>
<%
	String path=request.getContextPath();
%>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>LZTR 问卷网</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=path %>/questionnaire/css/bootstrap3.3.7.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="<%=path %>/questionnaire/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=path %>/questionnaire/css/justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=path %>/questionnaire/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
<% 
User user = (User) session.getAttribute("user");
%>


  <body>

    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div class="masthead">
        <h1 class="text-muted">LZTR 问卷网 </h1>
        <nav>
          <ul class="nav nav-justified">
            <li><a href="<%=path %>/FrontPage">首页</a></li>
            <li class="active"><a href="">个人信息</a></li>
            <li><a href="<%=path %>/MyQuestionnaire">我的问卷</a></li>
            <li><a href="<%=path %>/ReleaseQuestionnaire">问卷发布</a></li>
            <li><a href="<%=path %>/FillQuestionnaire">填写问卷</a></li>
            <li><a href="<%=path %>/HelpContact">帮助</a></li>
            <li><a href="<%=path %>/logoutPro">登出</a></li>
            <%if(((String)session.getAttribute("role")).equals("admin")){%>
				<li><a href="<%=path %>/allUser" ><i class="fa fa-table fa-fw"></i>系统信息管理</a></li>
			<%}%>
          </ul>
        </nav>
      </div>

	<div class="row conatiner"><div class="col-lg-2"></div><div class="col-lg-8">
	<h3>Account : <%=user.getUsername()%></h3>
	<%if (user.getEmail()!=null) {%> <h3>Email : <%=user.getEmail()%></h3><%}%>
	<%if (user.getSex()!=null) {%> <h3>Sex : <%=user.getSex()%></h3><%}%>
	<%if (user.getMobile()!=null) {%><h3>Phone : <%=user.getMobile()%></h3><%}%>
	<%if (user.getCountry()!=null) {%> <h3>Country : <%=user.getCountry()%></h3><%}%>
	<%if (user.getCity()!=null) {%> <h3>City : <%=user.getCity()%></h3><%}%>
	<%if (user.getJob()!=null) {%> <h3>Job : <%=user.getJob()%></h3><%}%>
	<%if (user.getAge()!=0) {%><h3>Age : <%=user.getAge()%></h3><%}%></div>
	</div></div>

      <!-- Site footer -->
      <footer class="footer">
        <p>&copy; 2017 LZTR Group.</p>
      </footer>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=path %>/questionnaire/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>