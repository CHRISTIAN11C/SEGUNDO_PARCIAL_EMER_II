<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>) request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTADO DE SEMINARIOS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="datos" style="max-width: 400px; margin: 0 auto; border: 1px solid #ccc; padding: 20px;">
            <p>SEGUNDO PARCIAL TEM-742</p>
            <p>NOMBRE: Christian Castro Paxi</p>
            <p>CARNET: 9915401 L.P</p>
        </div>

        <div class="container" style="max-width: 900px; margin: 0 auto; border: 1px solid #ccc; padding: 50px;">



            <h1 style="text-align: center;">REGISTRO DIA DEL INTERNET</h1>
            <p><a class="btn btn-success" href="AvisoController?action=add">Nuevo</a></p>
            <table class="table table-striped table-hover">
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha de ingreso</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${avisos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombres}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.seminarios}</td>
                        <td><form action="AvisoController?action=updateConfirmacion&id=${item.id}" method="post">
                                <input type="checkbox" name="confirmado" ${item.confirmado.equals("SI") ? 'checked' : ''}>
                            </form></td>
                        <td>${item.fecha}</td>

                        <td><a class="btn btn-primary" href="AvisoController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="btn btn-danger" href="AvisoController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>              
                </c:forEach>
            </table> 
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
