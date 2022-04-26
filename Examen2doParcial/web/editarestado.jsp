<%-- 
    Document   : editarestado
    Created on : 24-abr-2022, 16:56:28
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
        <title>Editar estado</title>
    </head>
    <body>
        <div class="titulo"><h1>EDITAR ESTADO</h1></div>
        <form name="editar" action="actualizarestado.jsp" method="post" >       
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
                String q = "select * from laboratorio where ID_reporte";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                
                <label>ESTADO</label>
                <br>
                <input type="hidden" name="estado2" onkeypress="return validarn(event)"
                       value="<%=rs.getString("estado")%>" >
                <br>
                <input type="submit" value="Actualizar Datos" >
                <br>
                <input type="reset" value="Borrar Datos" >
                
                
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al actualizar en la tabla");
                System.out.println(es.getMessage());
                %>
                 <h1>Error al consultar la tabla de la tabla</h1>
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
        </form>
        <br>
        <a href="index.html" >Regresar a Principal</a>   
        <script src="../js/validacion.js"></script>
    </body>
</html>
