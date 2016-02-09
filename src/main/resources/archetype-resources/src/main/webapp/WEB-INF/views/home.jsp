#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>${symbol_dollar}{ initParam.${artifactId}Name }</title>
		
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	    <meta name="description" content="Open Task - Open Source Project to Manager Task">
	    <meta name="author" content="Fabiano Góes">
	    <link rel="shortcut icon" href="${symbol_dollar}{ pageContext.request.contextPath }/resources/img/logo.png" />
	
	    <!-- Bootstrap core CSS -->
	    <link href="${symbol_dollar}{ pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
	
	    <link href="${symbol_dollar}{ pageContext.request.contextPath }/resources/css/footer.css" rel="stylesheet">
	
	    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	    <link href="${symbol_dollar}{ pageContext.request.contextPath }/resources/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
	
	    <!-- Custom styles for this template -->
	    <link href="${symbol_dollar}{ pageContext.request.contextPath }/resources/css/navbar-fixed-top.css" rel="stylesheet">
	
	    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
	    <!--[if lt IE 9]><script src="${symbol_dollar}{ pageContext.request.contextPath }/resources/js/bootstrap/3.3.6/ie8-responsive-file-warning.js"></script><![endif]-->
	    <script src="${symbol_dollar}{ pageContext.request.contextPath }/resources/js/bootstrap/3.3.6/ie-emulation-modes-warning.js"></script>
	
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->		
	</head>
  <body>
	
    <!-- Fixed navbar -->
	<nav class="navbar navbar-default navbar-fixed-top">
    		
    		<div class="container">
	        <div class="navbar-header">
	        		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="${symbol_pound}navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
	            		<span class="icon-bar"></span>
	          	</button>
	          	<a class="navbar-brand" href="${symbol_pound}">
	          		<img alt="${symbol_dollar}{ initParam.${artifactId}Name }" height="40px" src="${symbol_dollar}{ pageContext.request.contextPath }/resources/img/logo.png">
	          	</a>
	        </div>
        		
        		<div id="navbar" class="navbar-collapse collapse">
        		
	          	<ul class="nav navbar-nav navbar-right">
	            		<li class="dropdown">
	              		<a href="${symbol_pound}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
	              			<img alt="Avatar" height="40px" src="${symbol_dollar}{ pageContext.request.contextPath }/resources/img/default-avatar.png"> <span class="caret"></span>
	              		</a>
	              		<ul class="dropdown-menu">
	              			<li class="dropdown-header">Usuário logado:</li>
	                			<li><a href="${symbol_pound}">Administrador</a></li><!-- TODO: Exibir o Usuário logado no momento -->
	                			<li role="separator" class="divider"></li>
	                			<li><a href="${symbol_pound}">Perfil</a></li>
	                			<li><a href="${symbol_pound}">Configurações</a></li>
	                			<li role="separator" class="divider"></li>
	                			<li><a href="${symbol_pound}">Sair</a></li>
	              		</ul>
	            		</li>
	          	</ul>
          	
        		</div><!--/.nav-collapse -->
        
      </div><!-- /.container -->
      
    </nav><!-- /.navbar -->

	<div class="container">

		<div class="jumbotron">
        		<h1><img alt="${symbol_dollar}{ initParam.${artifactId}Name }" height="150px" src="${symbol_dollar}{ pageContext.request.contextPath }/resources/img/logo.png"> ${symbol_dollar}{ initParam.${artifactId}Name }.</h1>
        		<hr/>
        		<p>Open Source Project - ${symbol_dollar}{ initParam.${artifactId}Name } to Maven Projects.</p>
      	</div>

		<div class="container">
		</div>

		<footer class="footer">
			<hr/>
			<span class="pull-right">
				<img alt="${symbol_dollar}{ initParam.${artifactId}Name }" height="20px" src="${symbol_dollar}{ pageContext.request.contextPath }/resources/img/logo.png"> 
				<a href="${symbol_pound}">
					${symbol_dollar}{ initParam.${artifactId}Name }.in 2016 - ${symbol_dollar}{ initParam.${artifactId}Version }
				</a>
			</span>
		</footer>

    </div> <!-- /.container -->


    	<!-- Bootstrap core JavaScript ================================================== -->
    	<!-- Placed at the end of the document so the pages load faster -->
    	<script src="${symbol_dollar}{ pageContext.request.contextPath }/resources/js/jquery/1.11.3/jquery.min.js"></script>
    	<script>window.jQuery || document.write('<script src="${symbol_dollar}{ pageContext.request.contextPath }/resources/js/vendor/jquery.min.js"><${symbol_escape}/script>')</script>
    	<script src="${symbol_dollar}{ pageContext.request.contextPath }/resources/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    	<script src="${symbol_dollar}{ pageContext.request.contextPath }/resources/js/bootstrap/3.3.6/ie10-viewport-bug-workaround.js"></script>
    	
  </body>
</html>
