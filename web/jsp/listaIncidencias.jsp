<!DOCTYPE html>
<html>
    <title>Lista de incidencias</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <link href="../css/listaIncidencias.css" rel="stylesheet" type="text/css"/>
<body>
    <%
    String tutor=(String)session.getAttribute("tutor");
    String calendario[] = {"2019A","2019B","2018A","2018B"};
    String eincidencia[] = {"Urgente","Importante","Leve"};
    String incidencia[] = {"Falta a clases","Plagio de tareas","Copi� en el ex�men","Golpeo a compa�ero"};
    int numincidencias = 0;
    %>
    <div class="indices">
        <div class="seleccion">
            <select name="tipo">
                <option value="tutor">Tutor</option>
                <option value="tutor">Asesor</option>
            </select>
        </div>
        <div class="datosbarra">
            <ul class="indice">
                <li><a href="#"><i class="far fa-square"></i> UDG Virtual</a></li>
                <li><a href="#">Modulo virtual de tutorias</a></li>
                <li style="float:right"><a href="#">Salir <i class="fas fa-sign-out-alt"></i></a></li>
                <li style="float:right"><a href="#"><%=tutor%></a></li>
            </ul>
        </div>
        <div class="barra">
            <ul class="indice">
                <li><a href="../"><i class="fas fa-plus"></i> Crear una incidencia</a></li>
                <li><a href="../jsp/listaIncidencias.jsp"><i class="far fa-calendar-alt"></i> Lista de incidencias</a></li>
                <li><a href="#"><i class="fas fa-user-tie"></i> Espacio para tutor</a>
                     <ul>
                         <li><a href="#"><i class="far fa-calendar-plus"></i> Planes de trabajo</a></li>
                         <li><a href="#"><i class="far fa-calendar-plus"></i> Informes finales</a></li>
                         <li><a href="#"><i class="fas fa-envelope"></i> Envio de correo</a></li>
                         <li><a href="#"><i class="far fa-clock"></i> Historial de correos</a></li>
                         <li><a href="#"><i class="fas fa-inbox"></i> Buz�n de sugerencias</a></li>
                     </ul>
                 </li>   
            </ul>
        </div>
    </div>
    <br>
    <div class="incidencia">
        <input type="text" placeholder="Lista de incidencias">
    </div>
    <div class="tutorado">
        <div class="grid-container4">
            <div class="grid-item"><b>Codigo</b><br><input type="text"/></div>
            <div class="grid-item"><b>Apellido</b><br><input type="text"/></div>
            <div class="grid-item"><b>Nombre</b><br><input type="text"/></div>
            <div class="grid-item"><b>Situaci�n</b><br><input type="text"/></div>
        </div>
        <div class="grid-container3">
            <div class="grid-item"><b>Calendario</b><br>
                <select>
                    <%for(int i=0;i<calendario.length;i++){%>
                        <option><%=calendario[i]%></option>
                    <%}%>
                </select>
            </div>
            <div class="grid-item"><b>Estado de la incidencia</b><br>
                <select>
                    <%for(int i=0;i<eincidencia.length;i++){%>
                        <option><%=eincidencia[i]%></option>
                    <%}%>
                </select>
            </div>
            <div class="grid-item"><br>
                <select>
                    <%for(int i=0;i<incidencia.length;i++){%>
                        <option><%=incidencia[i]%></option>
                    <%}%>
                </select>
            </div>
        </div>
        <div class="botones">
            <input type="button" value="Buscar" class="btn">
            <input type="button" value="Limpiar" class="btn">
        </div>
    </div>
    <p>Total de incidencias: <%=numincidencias%></p>
    <div class="tabla">
     <table class="table-fill"  width="100%">
        <thead>
            <tr>
                <th class="text-left">PE</th>
                <th >Calendario</th>
                <th>Folio</th>
                <th>Codigo</th>
                <th>Situaci�n</th>
                <th>Materia</th>
                <th>NCR</th>
                <th>Estudiante</th>
                <th>Asesor</th>
                <th>Asunto</th>
                <th>Fecha</th>
                <th>Estado</th>
            </tr>
        </thead>
        <tbody class="table-hover">
            <!--<tr>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
                <td>test</td>
            </tr>-->
        </tbody>
    </table>    
</div>
</body>
</html>