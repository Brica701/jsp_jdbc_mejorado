<%--
  Created by IntelliJ IDEA.
  User: isaac
  Date: 02/05/2025
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%
    request.setCharacterEncoding("UTF-8");
    String tipo = request.getParameter("tipo");
    String ubicacion = request.getParameter("ubicacion");
    String fecha = request.getParameter("fecha");

    Connection con = (Connection) application.getAttribute("conexion");

    if (con != null) {
        try {
            String sql = "INSERT INTO entrenamiento (tipo, ubicacion, fecha) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, tipo);
            ps.setString(2, ubicacion);
            ps.setDate(3, Date.valueOf(fecha));
            ps.executeUpdate();
            ps.close();

            response.sendRedirect("listadoEntrenamientos.jsp");
        } catch (Exception e) {
            out.println("<p>Error al guardar entrenamiento: " + e.getMessage() + "</p>");
        }
    } else {
        out.println("<p>No hay conexión a la base de datos.</p>");
    }
%>
