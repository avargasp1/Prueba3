<%--
    Document   : crear
    Created on : 08-jun-2016, 16:25:57
    Author     : alejandrovargas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../template/calendar/tcal.css" />
	<script type="text/javascript" src="../template/calendar/tcal.js"></script>
    </head>
    <body>
        <ul>
            <li><a href="index.jsp">Usuarios</a> </li>
            <li><a href="../celular/index.jsp">Celulares</a> </li>
            <li><a href="">Sistemas Operativos</a> </li>
            <li><a href="">Lenguajes de Programacion</a> </li>
        </ul>
        <h1>CREAR</h1>
        
        <form method="post" action="/Prueba3/ServCelular">
            <table>
                <tr>
                    <td>NOMBRE:</td>
                    <td><input type="text" name="nombre" value=""></td>
                </tr>
                <tr>
                    <td>FECHA DE CREACION</td>
                    <td><input type="text" name="fecha_creacion" class="tcal" value=""></td>
                </tr>
                
                
            </table> 
            <input type="hidden" value="1" name="guardar">
            <input type="submit" value="Guardar">
        </form>
            
       
    </body>
</html>
