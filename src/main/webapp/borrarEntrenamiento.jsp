<%--
  Created by IntelliJ IDEA.
  User: isaac
  Date: 02/05/2025
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Borrar Entrenamiento</title>
</head>
<body>
<%
    boolean valido = true;
    int entrenamientoID = -1;

    try {
        entrenamientoID = Integer.parseInt(request.getParameter("id"));
    } catch (NumberFormatException e) {
        e.printStackTrace();
        valido = false;
    }

    if (valido) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto", "root", "user");

            String sql = "DELETE FROM entrenamiento WHERE entrenamientoID = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, entrenamientoID);
            int filas = ps.executeUpdate();

            System.out.println("ENTRENAMIENTOS BORRADOS: " + filas);

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try { ps.close(); } catch (Exception e) {}
            try { conn.close(); } catch (Exception e) {}
        }
    }
%>

<script>
    document.location = "listadoEntrenamientos.jsp";
</script>
</body>
</html>

