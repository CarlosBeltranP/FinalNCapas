<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurante Rustico</title>

</head>
<style>
@import "compass/css3";

table {
  font-family: 'Arial';
  margin: 25px auto;
  border-collapse: collapse;
  border: 1px solid #eee;
  border-bottom: 2px solid #00cccc;
  box-shadow: 0px 0px 20px rgba(0,0,0,0.10),
     0px 10px 20px rgba(0,0,0,0.05),
     0px 20px 20px rgba(0,0,0,0.05),
     0px 30px 20px rgba(0,0,0,0.05);
     }
  
 tr {
     &:hover {
      background: #f4f4f4;
      
      td {
        color: #555;
      }
    }
  }
  th, td {
    color: #787777;
    border: 1px solid #eee;
    padding: 12px 35px;
    border-collapse: collapse;
  }
  th {
    background: #00cccc;
    color: #fff;
    text-transform: uppercase;
    font-size: 12px;
    &.last {
      border-right: none;
    }
  }
}
</style>
<body>
<div align="center">

<br>
	<h1 style="font-family: Arial; color:#00B4A8">Sucursales</h1>

	<h3> <a style="text-decoration:none; text-size: 14xp; font-family: Arial; border: 2px solid #D0FFC3; background-color: #D0FFC3; color: #787777;
  border-radius: 5px; padding: 6px;"  href="new">Registrar sucursal</a></h3>
	
	<table border="1" padding="5" >
		<tr>
			<th style="text-align: center;">Sucursal</th>

			<th style="text-align: center;">Acción</th>
		</tr>
		<c:forEach items="${listSucursal}" var="sucursal">
		<tr>
		<td>${sucursal.nombre}</td>
		
		<td align="center">
			<a style="text-decoration:none; border: 2px solid #C3F2FF; background-color: #C3F2FF; color: #787777;
  				border-radius: 5px; padding: 6px;" href="edit?codigo=${sucursal.codigo}">Editar</a>
				&nbsp;&nbsp;&nbsp;
			<a  style="text-decoration:none; border: 2px solid #FFCECE; background-color: #FFCECE; color: #787777;
  				border-radius: 5px; padding: 6px;" href="delete?codigo=${sucursal.codigo}">Eliminar</a>
				&nbsp;&nbsp;&nbsp;
			<a style="text-decoration:none; border: 2px solid #C3FFF3; background-color: #C3FFF3; color: #787777;
 				 border-radius: 5px; padding: 6px;"  href="perfil?codigo=${sucursal.codigo}">Ver perfil</a>
			
		</td>
		</tr>
		</c:forEach>
	
	
	</table>




</div>

</body>
</html>