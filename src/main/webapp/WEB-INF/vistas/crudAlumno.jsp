<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Ejemplos de CIBERTEC - Jorge Jacinto </title>
</head>
<body>
<div class="container">
 <h3>Crud de Alumno</h3>
		 <div class="col-md-23" >  
	     
					<div class="row" style="height: 70px">
						<div class="col-md-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
						<div class="col-md-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRA</button>
						</div>
						<div class="col-md-2">
							<button type="button" data-toggle='modal'  data-target="#id_div_modal_registra"  class='btn btn-success' style="width: 150px">REGISTRA</button>
						</div>
					</div>
					
					<div class="row" > 
						<div class="col-md-12" >
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 10%">ID</th>
												<th style="width: 30%">Nombre</th>
												<th style="width: 10%">DNI</th>
												<th style="width: 20%">Correo</th>
												<th style="width: 10%">Fec.Nac.</th>
												<th style="width: 10%">Actualiza </th>
												<th style="width: 10%">Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
								</div>	
						</div>
					</div>
		  </div>
  
  
  	 <div class="modal fade" id="id_div_modal_registra" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de Alumno</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudAlumno" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Alumno</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_dni">DNI</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_dni" name="dni" placeholder="Ingrese el DNI" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_correo">Correo</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_correo" name="correo" placeholder="Ingrese el correo" type="text" />
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_fecha">Fecha Nacimiento</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_reg_fecha" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date" />
		                                        </div>
		                                    </div> 
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
		 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog" style="width: 60%">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Alumno</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudAlumno" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos del Alumno</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-5">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idAlumno" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_nombre">Nombre</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_dni">DNI</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_dni" name="dni" placeholder="Ingrese el DNI" type="text" maxlength="10"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_correo">Correo</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_correo" name="correo" placeholder="Ingrese el correo" type="text" />
		                                        </div>
		                                    </div>    
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_fecha">Fecha Nacimiento</label>
		                                        <div class="col-lg-5">
													<input class="form-control" id="id_act_fecha" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_actualiza">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                        
		                    </div>
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
		
		
				 <div class="modal fade" id="idModalElimina" >
					<div class="modal-dialog" style="width: 60%">
				 	
				 	<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4><span class="glyphicon glyphicon-ok-sign"></span> Eliminar Alumno</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>

</div>

<script type="text/javascript">

	$("#id_btn_filtrar").click(function(){
		var fil=$("#id_txt_filtro").val();
		$.getJSON("consultaCrudAlumno",{"filtro":fil}, function (lista){
			agregarGrilla(lista);
		});
	});
	
	function agregarGrilla(lista){
		 $('#id_table').DataTable().clear();
		 $('#id_table').DataTable().destroy();
		 $('#id_table').DataTable({
				data: lista,
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 5,
				lengthChange: false,
				columns:[
					{data: "idAlumno"},
					{data: "nombre"},
					{data: "dni"},
					{data: "correo"},
					{data: "fechaNacimiento"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idAlumno + '\',\'' + row.nombre +'\',\'' + row.dni  + '\',\'' + row.correo + '\',\'' + row.fechaNacimiento + '\')">Editar</button>';
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idAlumno + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
	}
	
	function eliminar(id){	
		mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
	}
	
	function accionEliminar(id){	
		$('#id_elimina').val(id);
	    $.ajax({
	          type: "POST",
	          url: "eliminaCrudAlumno", 
	          data: {"id":id},
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  mostrarMensaje(data.mensaje);
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	     });
	}
	
	function editar(id,nombre,dni,correo, fecha){	
		$('#id_ID').val(id);
		$('#id_act_nombre').val(nombre);
		$('#id_act_dni').val(dni);
		$('#id_act_correo').val(correo);
		$('#id_act_fecha').val(fecha);
		$('#id_div_modal_actualiza').modal("show");
	}
	
	function limpiarFormulario(){	
		$('#id_reg_nombre').val('');
		$('#id_reg_dni').val('');
		$('#id_reg_correo').val('');
		$('#id_reg_fecha').val('');
	}
	
	$("#id_btn_registra").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "registraCrudAlumno", 
	          data: $('#id_form_registra').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_registra').modal("hide");
	        	  mostrarMensaje(data.mensaje);
	        	  limpiarFormulario();
	        	  validator.resetForm();
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	        
	    }
	});
	
	$("#id_btn_actualiza").click(function(){
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "actualizaCrudAlumno", 
	          data: $('#id_form_actualiza').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  mostrarMensaje(data.mensaje);
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	    }
	});

	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre":{
                selector: "#id_reg_nombre",
                validators:{
                    notEmpty: {
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "dni":{
                selector: "#id_reg_dni",
                validators:{
                    notEmpty: {
                         message: 'El dni es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{8}$/,
                        message: 'el dni es 8 dígitos'
                    },
                }
            },
            "correo":{
                selector: "#id_reg_correo",
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    }
                }
            },
            "fechaNacimiento":{
            	 selector: "#id_reg_fecha",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            }
          
        }   
    });


	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre":{
                selector: "#id_act_nombre",
                validators:{
                    notEmpty: {
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "dni":{
                selector: "#id_act_dni",
                validators:{
                    notEmpty: {
                         message: 'El dni es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{8}$/,
                        message: 'el dni es 8 dígitos'
                    }
                }
            },
            "correo":{
                selector: "#id_act_correo",
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    }
                }
            },
            "fechaNacimiento":{
            	 selector: "#id_act_fecha",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            }
          
        }   
    });

</script>
    
</body>
</html> 