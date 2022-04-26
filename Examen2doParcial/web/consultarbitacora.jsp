<%-- 
    Document   : consultarbitacora
    Created on : 24-abr-2022, 14:46:06
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
        <title>BITACORA DE PROBLEMAS</title>
    </head>
    <body>
        <div class="titulo"><h1>CONSULTA DE BITACORA</h1></div>
        <table border="2">
            <thead>
                <tr>
                    <th>ID Reporte</th>
                    <th>Laboratorio</th>
                    <th>ID Laboratorio</th>
                    <th>Fecha del reporte</th>
                    <th>Hora del reporte</th>
                    <th>Fecha de reporte previo</th>
                    <th>Hora de reporte previa</th>
                    <th>Resonsable</th>
                    <th>Prioridad</th>
                    <th>Estado</th>
                    <th>Editar estado</th>
                </tr>
            </thead>
            <tbody>
     
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
                String q = "select * from laboratorio order by ID_reporte asc";

                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("ID_Reporte")%></td>
                    <td><%=rs.getString("Lab")%></td>
                    <td><%=rs.getString("ID_Lab")%></td>
                    <td><%=rs.getDate("Fecha_Reporte")%></td>
                    <td><%=rs.getTime("Hora_reporte")%></td>
                    <td><%=rs.getDate("Fecha_previa")%></td>
                    <td><%=rs.getTime("Hora_previa")%></td>
                    <td><%=rs.getString("Responsable")%></td>
                    <td><%=rs.getString("Prioridad")%></td>
                    <td><%=rs.getString("estado")%></td>
                    <td><a href="editarestado.jsp?id=<%=rs.getString("estado")%>" >Editar estado</a></td>
                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
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
        </table>
        
        <table border="2">
            <thead>
                <tr>
                    <th>ID reporte</th>
                    <th>Etiqueta</th>
                    <th>CPU</th>
                    <th>Marca</th>
                    <th>Monitor</th>
                    <th>Accesorios</th>
                    <th>Configuracion</th>
                </tr>
            </thead>
            <tbody>
                
            
        
        
        
        <%         
        URL = "jdbc:mysql://localhost/registros";
        userName = "root";
        password = "248163264128256";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                //necesitamos los parametros
                String q = "select * from equipo order by ID_reporte asc";

                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("ID_Reporte")%></td>
                    <td><%=rs.getString("Etiqueta")%></td>                  
                    <td><%=rs.getString("CPU")%></td>
                    <td><%=rs.getString("Marca")%></td>
                    <td><%=rs.getString("Monitor")%></td>
                    <td><%=rs.getString("Accesorios")%></td>
                    <td><%=rs.getString("Configuracion")%></td>
                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
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
        </table>
        
        <table border="2">
            <thead>
                <tr>
                    <th>ID reporte</th>
                    <th>Boleta del alumno</th>
                    <th>Nombre del alumno</th>
                    <th>Grupo</th>
                </tr>
            </thead>
            <tbody>
                
            
        
        
        
        <%         
        URL = "jdbc:mysql://localhost/registros";
        userName = "root";
        password = "248163264128256";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                //necesitamos los parametros
                String q = "select * from alumnos order by ID_reporte asc";

                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("ID_Reporte")%></td>
                    <td><%=rs.getInt("Boleta")%></td>                  
                    <td><%=rs.getString("Nombre")%></td>
                    <td><%=rs.getString("Grupo")%></td>
                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
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
        </table>
        
        
        <table border="2">
            <thead>
                <tr>
                    <th>Boleta</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Telefono</th>
                    <th>Asignatura</th>
                </tr>
            </thead>
            <tbody>
     
        <%        
        URL = "jdbc:mysql://localhost/registros";
        userName = "root";
        password = "248163264128256";
        driver = "com.mysql.jdbc.Driver";
        
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(URL, userName, password);
            
            try{
                //necesitamos los parametros
                String q = "select * from docente order by Boleta asc";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("boleta")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("appat")%></td>
                    <td><%=rs.getString("apmat")%></td>
                    <td><%=rs.getString("telefono")%></td>
                    <td><%=rs.getString("asignatura")%></td>

                </tr>
                <%
                    }
            }catch(SQLException es){
                System.out.println("Error al registrar en la tabla");
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
        </table>
        </tbody>
        <br>
        <a href="index.html" >Regresar a Principal</a>
    </body>
</html>
