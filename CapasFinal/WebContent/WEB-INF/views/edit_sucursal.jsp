<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Sucursal</title>
	<link href="resources/css/editStyle.css" rel = "stylesheet">
</head>

<body>
<div align="center">
	<h2>Editar sucursal</h2>
	<form:form action="save" method="post" modelAttribute="sucursal" >
		<table border="0" cellpadding="5">
		<tr>
			<td>Codigo: </td>
			<td>
				${sucursal.codigo}
				<form:hidden path="codigo"/>
			</td>
		</tr>
			<tr>
			<td>Nombre: </td>
			<td><form:input type="text" name="nombre" path="nombre" /></td>
		</tr>
			<tr>
			<td>Ubicación: </td>
			<td><form:input type="text" name="ubicacion" path="ubicacion" /></td>
		</tr>
			<tr>
			<td>Horario Apertura: </td>
			<td><form:input type="text" name="horario_a" path="horario_a" /></td>
		</tr>
		<tr>
			<td>Horario Cierre: </td>
			<td><form:input type="text" name="horario_c" path="horario_c" /></td>
		</tr>
			<tr>
			<td>Mesas: </td>
			<td><form:input type="text" name="mesas" path="mesas" /></td>
		</tr>
			<tr>
			<td>Gerente : </td>
			<td><form:input type="text" name="gerente"  path="gerente" /></td>
		</tr>
		<tr>
			<td colspan="2"><input  type="submit" value="Guardar" /></td>
		
		</tr>
		</table>
	</form:form>


</div>

</body>
</html>