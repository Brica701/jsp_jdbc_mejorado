<%--
  Created by IntelliJ IDEA.
  User: isaac
  Date: 02/05/2025
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Listado de Entrenamientos</title>
</head>
<body>
<h1>Listado de Entrenamientos</h1>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>ID</th>
        <th>Tipo</th>
        <th>Ubicación</th>
        <th>Fecha</th>
        <th>Acción</th>
    </tr>
    <%
        Connection con = (Connection) application.getAttribute("conexion");
        if (con != null) {
            String sql = "SELECT * FROM entrenamiento ORDER BY fecha DESC";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt("entrenamientoID");
                String tipo = rs.getString("tipo");
                String ubicacion = rs.getString("ubicacion");
                Date fecha = rs.getDate("fecha");
    %>
    <tr>
        <td><%= id %></td>
        <td><%= tipo %></td>
        <td><%= ubicacion %></td>
        <td><%= fecha %></td>
        <td>
            <a href="borrarEntrenamiento.jsp?id=<%= id %>"
               onclick="return confirm('¿Estás seguro de borrar este entrenamiento?');">Borrar</a>
        </td>
    </tr>
    <%
        }
        rs.close();
        stmt.close();
    } else {
    %>
    <tr>
        <td colspan="5">Error: conexión a base de datos no disponible.</td>
    </tr>
    <% } %>
</table>

<p><a href="formularioEntrenamiento.jsp">Crear nuevo entrenamiento</a></p>
<p><a href="index.jsp">Volver al Home</a></p>
</body>
</html>


