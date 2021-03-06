<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Formulario: Agregar persona</title>
</head>
<body>
	<div class="container">
		<div class="col-sm-6">
			<form:form action="/guardar" method="post" modelAttribute="persona">
				<div class="card">
					<div class="card-header">
						<h1>Registrar nuevo integrante</h1>
					</div>
					<div class="card-body">
						<div class="form-group">
							<form:label path="nombre">Nombre</form:label>
							<form:errors path="nombre"></form:errors>
							<form:input type="text" path="nombre" class="form-control"></form:input>
							<form:label path="telefono">Tel�fono</form:label>
							<form:errors path="nombre"></form:errors>
							<form:input type="text" path="telefono" class="form-control"></form:input>
						</div>
					</div>
					<div class="card-footer">
						<input type="submit" value="Enviar" class="btn btn-success">
					</div>
				</div>
			</form:form>

		</div>
	</div>

</body>
</html>