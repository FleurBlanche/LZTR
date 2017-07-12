<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.Questionnaire"%>
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
	<link href="<%=path %>/questionnaire/css/font-awesome.min.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="<%=path %>/questionnaire/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body value="0">

    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div class="masthead">
        <h1 class="text-muted">LZTR 问卷网 </h1>
        <nav>
          <ul class="nav nav-justified">
            <li><a href="<%=path %>/FrontPage">首页</a></li>
            <li><a href="<%=path %>/SelfInfo">个人信息</a></li>
            <li><a href="<%=path %>/MyQuestionnaire">我的问卷</a></li>
            <li class="active"><a href="">问卷发布</a></li>
            <li><a href="<%=path %>/FillQuestionnaire">填写问卷</a></li>
            <li><a href="<%=path %>/HelpContact">帮助</a></li>
            <li><a href="<%=path %>/logoutPro">登出</a></li>
            <%if(((String)session.getAttribute("role")).equals("admin")){%>
				<li><a href="<%=path %>/allUser" ><i class="fa fa-table fa-fw"></i>系统信息管理</a></li>
			<%}%>
          </ul>
        </nav>
      </div>
		
	</br>
      <div class="container">
		<button class="btn btn-default addBlank" type="button" style="floating:right">
				<i class="fa fa-plus  fa-2x">Blank-filling Question</i>
		</button>
		<button class="btn btn-default addSingle"  type="button" style="floating:right">
				<i class="fa fa-plus  fa-2x">Single Option Question</i>
		</button>
		<button class="btn btn-default addMultiple"  type="button" style="floating:right">
				<i class="fa fa-plus  fa-2x">Multiple Option Question</i>
		</button>
		
		<div class="row">
			 <label ><font size="5">Title</font></label>
			 <input type="text" name="title"  class="form-control">
		</div>
		<div class="row">
			 <label  ><font size="5">Introduction</font></label>
			 <input type="text" name="introduction"  class="form-control">
		</div>
		
		</br>
		<button class="btn btn-default submit" type="button" style="floating:right">
				<i class="fa fa-check fa-2x">confirm</i>
		</button>
		<button class="btn btn-default modify" type="button" style="floating:right">
				<i class="fa fa-check fa-2x">modify</i>
		</button>
    </div> <!-- /container -->
    
    <script src="<%=path %>/questionnaire/js/jquery-1.11.1.min.js"></script>
    <script src="<%=path %>/questionnaire/js/bootstrap.min.js"></script>
	<script src="<%=path %>/questionnaire/js/releaseQ.js"></script>
	<script>
	<%if(request.getAttribute("quescontent")!=null){%>
	modify(<%=request.getAttribute("quescontent") %>,<%=((Questionnaire)request.getAttribute("quesinfo")).getId() %>);
	<%}%>
	</script>

      

    </div> <!-- /container -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<%=path %>/questionnaire/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
