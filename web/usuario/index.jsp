<%-- 
    Document   : index
    Created on : 08-jun-2016, 15:32:28
    Author     : alejandrovargas
--%>

<%@page import="accesodato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Usuarios</h1>
        <br>
        
        <a href="crear.jsp">crear Usuario</a>
        <br>
        <form method="post" action="index.jsp">
            buscar: <input type="text" name="buscarNombre">
            <input type="submit" name="buscarNombre" value="Buscar">
            <%
                Conexion con = new Conexion();
                
                if (request.getParameter("buscarNombre") != null) {
                    if (request.getParameter("buscarNombre").isEmpty()) {

                        con.setConsulta("select * from usuarios where estado='activo'");
                    } else {
                        String nombre = request.getParameter("buscarNombre");
                        con.setConsulta("select * from usuarios where nombre like '%" + nombre + "%' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from usuarios where estado='activo'");
                }
            %>
        </form>
             
        <h3>lista</h3>
        <table>
            <thead>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>CLAVE</th>
                
            </thead>
            <tbody>
                <%
                    while(con.getResult().next()){
                        out.println("<tr>");
                        out.println("<td>"+con.getResult().getString("usuario_id")+"</td>");
                        out.println("<td>"+con.getResult().getString("nombre")+"</td>");
                        out.println("<td>"+con.getResult().getString("clave")+"</td>");
                        out.println("<td>" + "<a href='/Prueba3/ServUsuario?eliminar=" + con.getResult().getString("usuario_id") + "'>Eliminar</a>" + "</td>");
                        out.println("<td>" + "<a href='/Prueba3/usuario/editar.jsp?usuario_id=" + con.getResult().getString("usuario_id") + "'>Editar</a>" + "</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
        </table>
            
            <ul>
            <li><a href="index.jsp">Usuarios</a> </li>
            <li><a href="../celular/index.jsp">Celulares</a> </li>
            <li><a href="">Sistemas Operativos</a> </li>
            <li><a href="">Lenguajes de Programacion</a> </li>
        </ul>
    </body>
</html>
