<%-- 
    Document   : actualizardocente
    Created on : 24-abr-2022, 14:19:52
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
        <title>Actualizar datos docente</title>
    </head>
    <body>
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
                
                nom = request.getParameter("nombre2");
                appat = request.getParameter("appat2");
                apmat = request.getParameter("apmat2");
                tel = request.getParameter("tel2");
                asig = request.getParameter("asig2");
                bol = Integer.parseInt(request.getParameter("boleta2"));
                
                set = con.createStatement();
                
                String q = "update docente set Nombre = '"+nom+"', "
                        + "appat = '"+appat+"', apmat = '"+apmat+"', "
                        + "telefono = '"+tel+"', asignatura = '"+asig+"', where Boleta = "+bol+" ";
                
                int registro = set.executeUpdate(q);
                
                %>
                 <h1>Actualizacion del docente Exitosa</h1>
                <%
            
            }catch(SQLException es){
                System.out.println("Error al actualizar en la tabla");
                System.out.println(es.getMessage());
                %>
                 <h1>Error en la actualizacionMVCT< de la tabla</h1>
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


