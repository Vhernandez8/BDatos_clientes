<%-- 
    Document   : index
    Created on : 20-08-2023, 22:08:45
    Author     : victor
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Identificacion</title>
        <div><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"></div>
        <div><link href="css.css" rel="stylesheet" type="text/css"></div>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
       <div><table align="center" Table BORDER="4" CELLSPACING="2"
       WIDTH="100" size="50">
       <th> 
       <div><h1>DATOS DE IDENTIFICACION</h1></div>
       </th>
        <br>
        <br>
       <form action="controller" method="POST">
   
        <%
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        %>
            
        <%
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula?user=root");
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM formula");
            while (rs.next()) {
            %>
            
        <tr>
        <td>Nombre:
        <%=rs.getString("nombre") %></td>
        </tr>
        <tr>
        <td>Apellido:
        <%=rs.getString("apellido") %></td>
        </tr>
        <tr>
        <td>Direccion:
        <%=rs.getString("direccion") %></td>
        </tr>
        <tr>
        <td>Telefono:
        <%=rs.getString("telefono") %></td>
        </tr>
        <tr>
        <td>Correo:
        <%=rs.getString("correo") %></td>
        </tr>
            <%}
            %>
            
        </form>
    </tr>
    </tbody>
</table>
</html>
