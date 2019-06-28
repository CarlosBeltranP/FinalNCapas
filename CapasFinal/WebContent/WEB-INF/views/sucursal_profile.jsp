<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil</title>
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

    <c:forEach items="${listSucursal}" var="sucursal">
	<h1 style="font-family: Arial; color:#00B4A8">${sucursal.nombre}</h1>
	<form  action="${pageContext.request.contextPath}/sucursales"  method="post">
			<input style="border-width:5px; border-style:solid; border-color:#00B4A8; float: right; background-color:#00B4A8; border-radius: 5px; color:#fff"  type="submit" value="Regresar"/><br>
		</form><br>
	<table border="1" padding="5" >
		<tr>
			<th style="text-align: center;">Codigo</th>
			<th style="text-align: center;">Nombre</th>
			<th style="text-align: center;">Ubicacion</th>
			<th style="text-align: center;">Horario Apertura</th>
			<th style="text-align: center;">Horario Cierre</th>
			<th style="text-align: center;">Mesas</th>
			<th style="text-align: center;">Gerente</th>
			
		</tr>

		<tr>
		<td style="text-align: center;">${sucursal.codigo}</td>
		<td>${sucursal.nombre}</td>
		<td>${sucursal.ubicacion}</td>
		<td style="text-align: center;">${sucursal.horario_a}</td>
		<td style="text-align: center;">${sucursal.horario_c}</td>
		<td style="text-align: center;">${sucursal.mesas}</td>
		<td>${sucursal.gerente}</td>
		
		</tr>
		</c:forEach>
	
	
	</table>




</div>

</body>
</html>