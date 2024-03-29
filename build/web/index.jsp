<!DOCTYPE html>
<html>
    <head>
        <title>Crear una incidencia</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <script language="JavaScript" type="text/JavaScript"> 
            function abrirVentana() 
            /*{ 
            ventana=window.open ("jsp/kardex.html",'ventana_sec', 
            'scrollbars=no, status=no, resizable=yes, 
            toolbars=0, location=0, directories=0, 
            menubar=0, width=400, height=350'); 
            ventana.document.open(); 
            } */
        </script> 
    </head>
    <body>
        <%
            String tutor = "HERNANDEZ GONZALEZ, NOE SALVADOR";
            String programa[] = {"Licenciatura en Tecnologias de la informacion(TI)","Ingenieria en Ciencias Computacionales(ICCO)"};
            String alumnos[][] = {{"Contreras Nu�o, Jonatan(214423214)","ICCO","CUTonal�","Activo(AC)","NULL"},{"Hernandez Flores, Oscar Ernesto(217726862)","ICCO","CUTonal�","Activo(AC)","NULL"},{"Lopez Perez, Sergio Alberto(211226862)","ICCO","CUTonal�","Activo(AC)","NULL"}};
            session.setAttribute("tutor",tutor);
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
                    <li><a href="../Tutu"><i class="fas fa-plus"></i> Crear una incidencia</a></li>
                    <li><a href="../Tutu/jsp/listaIncidencias.jsp"><i class="far fa-calendar-alt"></i> Lista de incidencias</a></li>
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
        <div class="contenido">
            <div class="incidencia">
                <input type="text" placeholder="Crear incidencia">
            </div>
            <br>
            <div class="tutor">
                <div class="info">
                    <label>TUTOR</label>
                </div>
                <div class="incidencia" style="margin-top: 6px;">
                    <input type="text" value="<%=tutor%>" readonly="">
                </div>
            </div>
            <br>
            <div class="programa">
                <label><b>Programa</b></label>
                <br>
                <select>
                    <%for(int i=0; i<programa.length;i++){%>
                        <option><%=programa[i]%></option>
                    <%}%>
                </select>
            </div>
            <br>
            <table class="table-fill"  width="100%">
                <thead>
                    <tr>
                        <th class="text-left">Estudiante</th>
                        <th >Programa</th>
                        <th>Centro</th>
                        <th>Estatus</th>
                        <th>Beca</th>
                    </tr>
                </thead>
                <tbody class="table-hover">
                    <%
                    for(int i=0;i<alumnos.length;i++){
                    %>
                        <tr>
                        <%
                        for(int x=0;x<alumnos[i].length;x++){
                        %>
                            <%
                            if(x==0){
                            %>
                            <td class="text-left"><input type="radio">&nbsp;<a href="#" onclick="document.getElementById('id01').style.display='block'"><%=alumnos[i][x]%></a></td>
                            <%
                            x=1;
                            }else
                            %>
                            <td><%=alumnos[i][x]%></td>
                        <%
                        }
                        %>
                    <%
                    }
                    %>
                </tbody>
            </table>   
            <br>
            <label>Descripci�n</label>
            <textarea></textarea>
            <br>
            <div class="archivo">                    
                <input type="file" name="incidencia" />
                <input type="submit" value="Subir archivos" name="archivo">
            </div>
        </div>
        <div id="id01" class="modal">
            <div class="modal-contenido">
                <div class="info">
                    <b>Informaci�n general del estudiante</b>
                    <span onclick="document.getElementById('id01').style.display='none'" class="cerrar">&times;</span>
                </div>
                <div class="datos-estudiante">
                    <div class="datos">
                        <b>DATOS DEL ESTUDIANTE</b>
                    </div>
                    <table class="table-fill"  width="100%">
                            <thead>
                                <tr>
                                    <th >Codigo</th>
                                    <th>Apellido</th>
                                    <th>Nombre</th>
                                    <th>Adminisi�n</th>
                                    <th>Situaci�n</th>
                                </tr>
                            </thead>
                            <tbody class="table-hover">
                                <tr>
                                    <td>214423214</td>
                                        <td>Contreras Nu�o</td>
                                    <td>Jonatan(AC)</td>
                                    <td>2017A</td>
                                    <td>Alumno Activo(AC)</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="text-left">Programa educativo</th>
                                    <th>Correo electronico</th>
                                    <th>Edad</th>
                                    <th>Telefono</th>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-left">Ingenieria en ciencias computacionales (ICCO)</td>
                                        <td>jona.conu@test.com</td>
                                    <td>20</td>
                                    <td>33225144</td>
                                </tr>
                                <tr>
                                    <th colspan="3" class="text-left">Municipio</th>
                                    <th>Estado</th>
                                    <th>Pais</th>
                                </tr>
                                <tr>
                                    <td colspan="3" class="text-left">GUADALAJARA</td>
                                        <td>JALISCO</td>
                                    <td>MEXICO</td>
                                </tr>
                                <tr>
                                    <th colspan="3" class="text-left">Tutor</th>
                                    <th colspan="2" class="text-left">Momento de tutoria</th>
                                </tr>
                                <tr>
                                    <td colspan="3" class="text-left">CONTRERAS NU�O JONATAN</td>
                                    <td colspan="2" class="text-left">Permanencia</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="datos-estudiante"> 
                        <div class="datos">
                            <b>MATERIAS REGISTRADAS</b>
                        </div>
                        <table class="table-fill"  width="100%">
                            <thead>
                                <tr>
                                    <th class="text-left">Materia</th>
                                    <th>NRC</th>
                                    <th class="text-left">Asesor</th>
                                </tr>
                            </thead>
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">INVESTIGACION EN CIENCIAS COMPUTACIONALES</td>
                                        <td>75654</td>
                                    <td class="text-left">HERNANDEZ GONZALEZ, NOE SALVADOR</td>
                                </tr>
                                <tr>
                                    <td class="text-left">INVESTIGACION EN CIENCIAS COMPUTACIONALES</td>
                                        <td>75654</td>
                                    <td class="text-left">HERNANDEZ GONZALEZ, NOE SALVADOR</td>
                                </tr>
                                <tr>
                                    <td class="text-left">INVESTIGACION EN CIENCIAS COMPUTACIONALES</td>
                                        <td>75654</td>
                                    <td class="text-left">HERNANDEZ GONZALEZ, NOE SALVADOR</td>
                                </tr>
                                <tr>
                                    <td class="text-left">INVESTIGACION EN CIENCIAS COMPUTACIONALES</td>
                                        <td>75654</td>
                                    <td class="text-left">HERNANDEZ GONZALEZ, NOE SALVADOR</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="datos-estudiante"> 
                        <div class="datos">
                            <b>KARDEX DEL ESTUDIANTE</b>
                        </div>
                        <table class="table-fill"  width="100%">
                            <thead>
                                <tr>
                                    <th class="text-left">Programa educativo</th>
                                    <th>Admisi�n</th>
                                    <th class="text-left">Situaci�n</th>
                                </tr>
                            </thead>
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left"><a href="#">Ingenieria en ciencias computacionales</a></td>
                                        <td>2017A</td>
                                    <td class="text-left">Activo</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                <div class="datos-estudiante"> 
                    <div class="datos">
                        <b>RESULTADOS DEL CURSO DE SELECCI�N </b>
                    </div>
                    <table class="table-fill"  width="100%">
                        <thead>
                            <tr>
                                <th colspan="2">Fecha de valoraci�n: del 01/ene/2019 al 26/jun 2019</th>
                                <th class="text-left" colspan="2">Promedio global 90.7</th>
                            </tr>
                        </thead>
                        <tbody class="table-hover">
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="text-left">INFRAESTRUCTURA DE TECNOLOGIAS DE INFORMACION</td>
                                    <td class="text-left">&nbsp;E&nbsp;&nbsp;&nbsp;</td>
                                <td class="text-left">TOPICOS SELECTOS DE INGENIERIA DE SOFTWARE</td>
                                <td class="text-left">&nbsp;MB&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <script>
              var info = window.document.getElementById("id01");
              window.addEventListener("click", (e)=> {
                  if(e.target==info){info.style.display = "none";}    
              },false);
          </script>
        </div>
    </body>
</html>
