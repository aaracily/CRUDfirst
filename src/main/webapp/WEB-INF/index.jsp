<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Index CRUD practica1</title>
</head>
<body>
	<div class="container mt-4">
		<div class="page-header">
			<h1>Integrantes Expedición Polar</h1>
			<a href="/nuevo" class="btn btn-primary">Nuevo</a>
		</div>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Teléfono</th>
					<th>Acción</th>
				</tr>

			</thead>
			<tbody>
				<c:forEach items="${personas}" var="p">
					<tr>
						<td><c:out value="${p.nombre}"></c:out></td>
						<td><c:out value="${p.telefono}"></c:out></td>
						<td><a href="/editar/${p.id}" class="btn btn-info btn-sm">Editar</a> 
						<a  href="/eliminar/${p.id}"class="btn btn-dark btn-sm">Eliminar</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="js/funciones.js"></script>
</html>