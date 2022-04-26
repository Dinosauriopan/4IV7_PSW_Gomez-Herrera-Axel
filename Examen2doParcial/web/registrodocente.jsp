<%-- 
    Document   : registrodocente
    Created on : 24-abr-2022, 13:03:27
    Author     : Axel Gómez
--%>

<%@page contentType="text/html" language="java"
        import="java.sql.*, java.util.*, java.text.*" 
        pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stylejs.css">
        <title>Registro del docente</title>
    </head>
    <body>
        <div class="titulo"><h1>REGISTRO DE DOCENTE</h1></div>
        <% 
        //esa codigo java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String userName, URL, password, driver;
        
        URL = "jdbc:mysql://localhost/registros";
        userName = "root";
        password = "248163264128256";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                //necesitamos los parametros
                String nom, appat, apmat, tel, asig;
                int bol;
                
                nom = request.getParameter("Nombre");
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                tel = request.getParameter("telefono");
                asig = request.getParameter("asignacion");
                bol = Integer.parseInt(request.getParameter(""));
                
                set = con.createStatement();
                
                String q = "insert into docente"
                        + "values ("+bol+", '"+nom+"', '"+appat+"', '"+apmat+"', '"+tel+"', '"+asig+"')";
                
                int registro = set.executeUpdate(q);
                
                %>
                 <h1>Registro del Docente Exitoso</h1>
                <%
            
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
                System.out.println(es.getMessage());
                %>
                 <h1>Error en el registro de la tabla</h1>
                <%
                
            }
        }catch(Exception e){
        System.out.println("Error al conectar BD");
        System.out.println(e.getMessage());
        %>
        <h1>No conected T_T</h1>
        <%
        
        }
        
        
        
        
        
        %>
        
        <br>
        <a href="index.html" >Regresar a Principal</a>
    </body>
</html>
