<%-- 
    Document   : editardocente
    Created on : 24-abr-2022, 14:17:06
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
        <title>Editar docente</title>
    </head>
    <body>
        <div class="titulo"><h1>EDITAR DOCENTE</h1></div>
        <form name="editar" action="actualizardocente.jsp" method="post" >
            

        
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
                int id = Integer.parseInt(request.getParameter("id"));
                //necesitamos los parametros
                String q = "select * from docente where Boleta ="+id;
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                
                <label>Boleta</label>
                <br>
                <input type="hidden" name="boleta2 " onkeypress="return validarnn(event)"
                       value="<%=rs.getInt("boleta")%>" >
                <br>
                <label>Nombre</label>
                <br>
                <input type="text" name="nombre2" onkeypress="return validarn(event)"
                       value="<%=rs.getString("nombre")%>" >
                <br>
                <label>Apellido Paterno</label>
                <br>
                <input type="text" name="appat2" onkeypress="return validarn(event)"
                       value="<%=rs.getString("appat")%>" >
                <br>
                <label>Apellido Materno</label>
                <br>
                <input type="text" name="apmat2" onkeypress="return validarn(event)"
                       value="<%=rs.getString("apmat")%>" >
                <br>
                <label>Telefono</label>
                <br>
                <input type="text" name="tel2" onkeypress="return validarnn(event)"
                       value="<%=rs.getString("telefono")%>" >
                <br>
                <label>Asignatura</label>
                <br>
                <input type="text" name="asig2" onkeypress="return validarn(event)"
                       value="<%=rs.getString("asignatura")%>" >
                <br>
                <input type="submit" value="Actualizar Datos" onclick="validarb()">
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


