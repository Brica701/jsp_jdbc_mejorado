<%--
  Created by IntelliJ IDEA.
  User: isaac
  Date: 02/05/2025
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Nuevo Entrenamiento</title>
</head>
<body>
<h2>Introduzca los datos del nuevo entrenamiento:</h2>
<form method="post" action="grabaEntrenamiento.jsp">
  Tipo de entrenamiento:
  <select name="tipo">
    <option value="Físico">Físico</option>
    <option value="Técnico">Técnico</option>
  </select><br/>

  Ubicación:
  <input type="text" name="ubicacion" /><br/>

  Fecha:
  <input type="date" name="fecha" /><br/>

  <input type="submit" value="Aceptar">
</form>

<%
  String error = (String) session.getAttribute("error");
  if (error != null) {
%>
<span style="background-color: red; color: yellow;"><%= error %></span>
<%
    session.removeAttribute("error");
  }
%>

<p><a href="listadoEntrenamientos.jsp">Volver al listado</a></p>
</body>
</html>

