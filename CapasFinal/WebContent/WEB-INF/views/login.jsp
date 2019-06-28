<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
 %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<html>
<head>
<link href="resources/css/loginStyle.css" rel = "stylesheet">
	<meta charset="ISO-8859-1">
	<title>Restaurante Rustico</title>
	<link href="resources/css/loginStyle.css" rel = "stylesheet">

</head>
<style>
.container{
	max-width: 600px;
	margin: 0 auto;
	padding: 80px 0;
	height: 400px;
	text-align: center;
	
	
}
h1{
		font-size: 40px;
		transition-duration: 1s;
		transition-timing-function: ease-in-put;
		font-family:Arial;
		font-weight: 200;
	}
	
	form{
	padding: 20px 0;
	position: relative;
	z-index: 2;}
	
	.user{
		display: block;
		appearance: none;
		outline: 0;
		border: 1px solid fade(white, 40%);
		background-color: fade(white, 20%);
		width: 250px;
		
		border-radius: 3px;
		padding: 10px 15px;
		margin: 0 auto 10px auto;
		display: block;
		text-align: center;
		font-size: 18px;
		
		color: #A4A4A4;
		
		transition-duration: 0.25s;
		font-weight: 300;}
		
		.pass{
		display: block;
		appearance: none;
		outline: 0;
		background-color: fade(white, 20%);
		width: 250px;
		border-radius: 3px;
		padding: 10px 15px;
		margin: 0 auto 10px auto;
		display: block;
		text-align: center;
		font-size: 18px;
		
		color: #A4A4A4;
		
		transition-duration: 0.25s;
		font-weight: 300;}
		
		input:hover{
			background-color: fade(white, 40%);
		}
		
		input:focus{
			background-color: white;
			width: 300px;
			
			color: @prim;
		}
	button{
		appearance: none;
		outline: 0;
		background-color: #00C6AC;
		border: 0;
		padding: 10px 15px;
		color: white;
		border-radius: 3px;
		width: 280px;
		cursor: pointer;
		font-size: 18px;
		transition-duration: 0.25s;
		}
		
		button:hover{
			background-color: rgb(245, 247, 249);
		}

</style>

<body>

    <br>
	<h1 align="center" style="font-family: Arial; color:#00B4A8">Restaurante Rustico</h1>
  
  <div class="wrapper">
  <div class="container">
     <h1>Iniciar sesion</h1>
	<form class="form-signin" action="${pageContext.request.contextPath}/inicio" method="post">
      <input class="user" type="text" name="username" id="" placeholder="Usuario" required="" autofocus="" />
      <input class="pass" type="password"  name="password" id="" placeholder="Password" required=""/>      
      <button type="submit" id="loginBtn" name="Submit">Login</button>
      <!--  <input type="submit" id="loginBtn" name="Submit" value="Iniciar Sesion" class="btn btn-lg btn-primary btn-block" >   -->
    </form>
  </div>
  </div>



	



		
</body>
</html>

