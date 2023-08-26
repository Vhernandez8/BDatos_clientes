<%-- 
    Document   : crear
    Created on : 25-08-2023, 03:16:18
    Author     : victor
--%>
<!DOCTYPE html>
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
     <div class="container mt-5">
     <div class="row">
     <div class="col-sm">
         <form action="crear.jsp" method="post">
        <div class="form-group">
        <label>Nombre</label>
    <input name="nombre" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese_Usuario" required="">
    </div>
     <div class="form-group">
     <label>Apellido</label>
     <input name="apellido" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese_Apellido" required="">
     </div>
     <div class="form-group">
     <label>Direccion</label>
     <input name="direccion" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese_Direccion" required="">
     </div>
     <div class="form-group">
     <label>Telefono</label>
     <input name="telefono" type="number" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese_Telefono" required="">
     </div>
     <div class="form-group">
     <label>Correo</label>
     <input name="correo" type="email" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese_Correo" required="">
     </div>
           <input type="hidden" name="enviar" value="enviar">
     <button type="submit" class="btn btn-secondary">Registrar</button>
       </form>
       </div>
       </div>
       </div>
         
         <% 
                 if (request.getParameter("enviar") !=null) {
                 String strNombre = request.getParameter("nombre");
                 String strApellido = request.getParameter("apellido");
                 String strDireccion = request.getParameter("direccion");
                 String strTelefono = request.getParameter("telefono");
                 String strCorreo = request.getParameter("correo");

             
             
          try {
          
                Connection con = null;
                Statement st = null;
                
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/formula?user=root");
                st = con.createStatement();
                st = execute("INSERT INTO formula(nombre,apellido,direccion,telefono,correo) VALUES('"+strNombre+"','"+strApellido+"','"+strDireccion+"','"+strTelefono+"','"+strCorreo+"')");
                request.getRequestDispatcher("index.jsp").forward(request, response);
             }catch (Exception e) {
              out.print(e);
             }}
          
         %>
         
    </body>
</html>
