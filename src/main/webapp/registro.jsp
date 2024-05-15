<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    Aviso aviso = (Aviso) request.getAttribute("aviso");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
         <div class="datos" style="max-width: 400px; margin: 0 auto; border: 1px solid #ccc; padding: 20px;">
            <p>SEGUNDO PARCIAL TEM-742</p>
            <p>NOMBRE: Christian Castro Paxi</p>
            <p>CARNET: 9915401</p>
        </div>
        <div class="container">
            <h1>Nuevo registro</h1>
            <form action="AvisoController" method="post">
                <input type="hidden" name="id" value="${aviso.id}" />
                <div class="form-group">
                    <label>Nombres</label>
                    <input type="text" name="nombres" value="${aviso.nombres}" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Apellidos</label>
                    <textarea name="apellidos" class="form-control">${aviso.apellidos}</textarea>
                </div>
                <div class="form-group">
                    <label>Seminarios</label>

                    <ul>
                        <li>
                            <input type="checkbox" id=" inteligencia artificial " name="seminarios" value=" inteligencia artificial ">
                            <label for=" inteligencia artificial ">Inteligencia Artificial</label>
                        </li>
                        <li>
                            <input type="checkbox" id=" machine learning " name="seminarios" value=" machine learning ">
                            <label for=" machine learning ">Machine Learning</label>
                        </li>
                        <li>
                            <input type="checkbox" id=" simulacion con arena " name="seminarios" value=" simulacion con arena ">
                            <label for="simulacion con arena">Simulación con Arena</label>
                        </li>
                        <li>
                            <input type="checkbox" id=" robotica educativa " name="seminarios" value=" robotica educativa ">
                            <label for=" robotica educativa ">Robótica Educativa</label>
                        </li>
                    </ul>
                </div>
                <div class="form-group">

                    <label>Confirmado</label>
                    <div>
                        <label>
                            <input type="radio" name="confirmado" value="SI" ${aviso.confirmado.equals("SI") ? 'checked' : ''} required>SI
                        </label><br>
                        <label>
                            <input type="radio" name="confirmado" value="NO" ${aviso.confirmado.equals("NO") ? 'checked' : ''}> NO
                        </label><br>
                    </div><label>Confirmado</label>
                </div>
                <div class="form-group">
                    <label>Fecha de Ingreso</label>

                    <input type="date" id="fecha" name="fecha" value=${aviso.fecha} required>
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Enviar" />
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>                    
    </body>
</html>
