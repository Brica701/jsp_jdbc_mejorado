<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>

<!-- Enlaces para Socios -->
<h2>Gestión de Socios</h2>
<a href="listadoSocios.jsp">Listado de Socios</a><br>
<a href="formularioSocio.jsp">Formulario de Socio Nuevo</a><br>
<a href="pideNumeroSocio.jsp">Pide de Socios</a><br>

<form action="detalleSocio.jsp">
    Cargar socio con ID:
    <input type="text" name="socioID">
    <input type="submit" value="Enviar">
</form>

<hr>

<!-- Enlaces para Entrenamientos -->
<h2>Gestión de Entrenamientos</h2>
<a href="listadoEntrenamientos.jsp">Listado de Entrenamientos</a><br>
<a href="formularioEntrenamiento.jsp">Formulario de Entrenamiento Nuevo</a><br>

<form action="borrarEntrenamiento.jsp">
    Borrar entrenamiento con ID:
    <input type="text" name="id">
    <input type="submit" value="Borrar">
</form>

</body>
</html>
