
<%@page import="Modelo.Estediante" %>
<%@page import="java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Estudiantes</h1>
        
        <div class ="container" >
            <form action="" method="post" class="form-group"> 
                <label for = "lblcodigo"><b>Codigo:</b></label>
                <input type="text" name="txtcodigo" id="txtcodigo" class="form-control" placeholder="Ejemplo: E001" required>
                <label for = "lblnombres"><b>Nombres:</b></label>
                <input type="text" name="txtnombres" id="txtnombres" class="form-control" placeholder="Ejemplo: Nombre 1 Nombre 2" required>
                <label for = "lblapellidos"><b>Apellidos:</b></label>
                <input type="text" name="txtapellidos" id="txtapellidos" class="form-control" placeholder="Ejemplo: Apellido 1 Apellido 2" required>
                 <label for = "lbldireccion"><b>Direccion:</b></label>
                <input type="text" name="txtdireccion" id="txtdireccion" class="form-control" placeholder="# casa Calle Zona Ciudad" required>
                 <label for = "lbltelefono"><b>Telefono:</b></label>
                <input type="number" name="txttelefono" id="txttelefono" class="form-control" placeholder="88888888" required>
                <label for = "lblfechanacimiento"><b>Fecha de Nacimiento:</b></label>
                <input type="date" name="txtfechanacimiento" id="txtfechanacimiento" class="form-control" required>
                <label for = "lbltiposangre"><b>Tipo de Sangre:</b></label>
                <select name="dropsangre" id="dropsangre" class="form-control">
                    <%
                     Estediante estudiante = new Estediante();
                     HashMap<String,String> drop = estudiante.dropsangre();
                     for(String i:drop.keySet()){
                     
                        out.println("<option value='"+i+"'>"+ drop.get(i)+"</option>");
                        }
                    %>                   
                </select>
                <button type="button" name="btnagregar" id="btnagregar" class="btn btn-primary">Agregar</button>
                
            </form>
            
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
    </body>
</html>
