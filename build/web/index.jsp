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
        <script src="https://kit.fontawesome.com/513bd683e0.js" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <th> 
       </th>
        <br>
        <br>
       <form action="controller" method="POST">
       <table class="table table-dark table-striped">
             
       <thead>
       <tr>
           <th scope="col" colspan="6" class="text-center">FORMULARIO DE IDENTIFICACION</th>
           <th scope="col">
           <a href="crear.jsp"><i class="fa-thin fa-user-plus"></i></a>
       </th>
       </tr>
       <tr>
        
      <th scope="col">ID</th>
      <th scope="col">Nombre:</th>
      <th scope="col">Apellido:</th>
      <th scope="col">Direccion:</th>
      <th scope="col">Telefono:</th>
      <th scope="col">Correo:</th>
    </tr>
  </thead>
  <tbody>
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
      <th scope="row"><%=rs.getString(1)%></th>
      <td> <%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td> 
       <a href="editar.jsp?nombre">
       <i class="fa fa-pencil-alt"></i></a>
       <a href="borrar.jsp">
       <i class="fa fa-trash-alt"></i></a>
       </td>
    </tr>
   <tr>
    
    <%}
            %>
  
</tbody>
</table>
</form>
</html>

