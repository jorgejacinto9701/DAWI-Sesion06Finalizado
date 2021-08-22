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
 <h3>Crud de Modalidad</h3>
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
						<div class="col-md-12">
								<div class="content" >
						
									<table id="id_table" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th style="width: 5%" >ID</th>
												<th style="width: 25%">Nombre</th>
												<th style="width: 8%">#Hombres</th>
												<th style="width: 8%">#Mujeres</th>
												<th style="width: 8%">Edad Max</th>
												<th style="width: 8%">Edad Min</th>
												<th style="width: 8%">Sede</th>
												<th style="width: 10%">Deporte</th>
												<th style="width: 10%">Actualiza</th>
												<th style="width: 10%">Elimina</th>
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
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Registro de modalidad</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Modalidad</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_num_hombres"># Hombres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_num_hombres" name="numHombres" placeholder="Ingrese el n�mero de hombres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_num_mujeres"># Mujeres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_num_mujeres" name="numMujeres" placeholder="Ingrese el n�mero de mujeres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_maxima">Edad M�xima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_maxima" name="edadMaxima" placeholder="Ingrese la edad m�xima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_minima">Edad M�nima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_reg_minima" name="edadMinima" placeholder="Ingrese la edad m�nima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_sede">Sede</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_reg_sede" name="sede" placeholder="Ingrese la sede" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_reg_deporte">Deporte</label>
		                                        <div class="col-lg-3">
													 <select id="id_reg_deporte" name="deporte" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
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
		
				<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Modalidad</h4>
				</div>
				<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudModalidad" class="form-horizontal"     method="post">
		                    <div class="panel-group" id="steps">
		                        <!-- Step 1 -->
		                        <div class="panel panel-default">
		                            <div class="panel-heading">
		                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#steps" href="#stepOne">Datos de Modalidad</a></h4>
		                            </div>
		                            <div id="stepOne" class="panel-collapse collapse in">
		                                <div class="panel-body">
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_ID">ID</label>
		                                        <div class="col-lg-8">
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idModalidad" type="text" maxlength="8"/>
		                                        </div>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_nombre">Nombre</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_num_hombres"># Hombres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_num_hombres" name="numHombres" placeholder="Ingrese el n�mero de hombres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_num_mujeres"># Mujeres</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_num_mujeres" name="numMujeres" placeholder="Ingrese el n�mero de mujeres" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>		   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_maxima">Edad M�xima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_maxima" name="edadMaxima" placeholder="Ingrese la edad m�xima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>   
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_minima">Edad M�nima</label>
		                                        <div class="col-lg-3">
													<input class="form-control" id="id_act_minima" name="edadMinima" placeholder="Ingrese la edad m�nima" type="text" maxlength="2"/>
		                                        </div>
		                                    </div>    
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_sede">Sede</label>
		                                        <div class="col-lg-8">
													<input class="form-control" id="id_act_sede" name="sede" placeholder="Ingrese la sede" type="text" maxlength="20"/>
		                                        </div>
		                                    </div>  
		                                    <div class="form-group">
		                                        <label class="col-lg-3 control-label" for="id_act_deporte">Deporte</label>
		                                        <div class="col-lg-3">
													<select id="id_act_deporte" name="deporte" class='form-control'>
							                            	<option value=" ">[Seleccione]</option>    
							                         </select>
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

</div>

<script type="text/javascript">
$.getJSON("listaDeporte", {}, function(data){
	$.each(data, function(i,item){
		$("#id_reg_deporte").append("<option value="+item.idDeporte +">"+ item.nombre +"</option>");
		$("#id_act_deporte").append("<option value="+item.idDeporte +">"+ item.nombre +"</option>");
	});
});


$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	$.getJSON("consultaCrudModalidad",{"filtro":fil}, function (lista){
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
				{data: "idModalidad"},
				{data: "nombre"},
				{data: "numHombres"},
				{data: "numMujeres"},
				{data: "edadMaxima"},
				{data: "edadMinima"},
				{data: "sede"},
				{data: "deporte.nombre"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idModalidad + '\',\'' + row.nombre +'\',\'' + row.numHombres  +'\',\'' + row.numMujeres + '\',\'' + row.edadMaxima + '\',\'' +  row.edadMinima + '\',\'' +  row.sede + '\',\'' + row.deporte.idDeporte + '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="eliminar(\'' + row.idModalidad + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

function eliminar(id){	
	mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar,null,id);
}

function accionEliminar(id){	
    $.ajax({
          type: "POST",
          url: "eliminaCrudModalidad", 
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

function editar(id,nombre,numHombres,numMujeres,edadMaxima, edadMinima,sede, idDeporte){	
	$('#id_ID').val(id);
	$('#id_act_nombre').val(nombre);
	$('#id_act_num_hombres').val(numHombres);
	$('#id_act_num_mujeres').val(numMujeres);
	$('#id_act_minima').val(edadMinima);
	$('#id_act_maxima').val(edadMinima);
	$('#id_act_deporte').val(idDeporte);
	$('#id_act_sede').val(sede);
	$('#id_div_modal_actualiza').modal("show");
}

function limpiarFormulario(){	
	$('#id_reg_num_hombres').val('');
	$('#id_reg_num_mujeres').val('');
	$('#id_reg_maximo').val('');
	$('#id_reg_minimo').val('');
	$('#id_reg_sede').val('');
	$('#id_reg_deporte').val(' ');
}

$("#id_btn_registra").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "registraCrudModalidad", 
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
          url: "actualizaCrudModalidad", 
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



</script>

<script type="text/javascript">
	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_reg_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "numHombres": {
        		selector : '#id_reg_num_hombres',
                validators: {
                    notEmpty: {
                        message: 'El n�mero de hombres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "numMujeres": {
        		selector : '#id_reg_num_mujeres',
                validators: {
                	notEmpty: {
                        message: 'El n�mero de mujeres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "edadMaxima": {
        		selector : '#id_reg_maxima',
                validators: {
                	notEmpty: {
                        message: 'La edad m�xima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "edadMinima": {
        		selector : '#id_reg_minima',
                validators: {
                	notEmpty: {
                        message: 'La edad m�nima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "sede": {
        		selector : '#id_reg_sede',
                validators: {
                	notEmpty: {
                        message: 'La sede es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'La sede es de 2 a 20 caracteres',
                    	min : 2,
                    	max : 20
                    }
                }
            },
            "deporte.idDeporte": {
        		selector : '#id_reg_deporte',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>

<script type="text/javascript">
	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre": {
        		selector : '#id_act_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
            "numHombres": {
        		selector : '#id_act_num_hombres',
                validators: {
                    notEmpty: {
                        message: 'El n�mero de hombres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "numMujeres": {
        		selector : '#id_act_num_mujeres',
                validators: {
                	notEmpty: {
                        message: 'El n�mero de mujeres es un campo obligatorio'
                    },
                    lessThan: {
		                value: 15,
		                inclusive: true,
		                message: 'La edad es menor a 15'
		            },
		            greaterThan: {
		                value: 0,
		                inclusive: true,
		                message: 'La edad es mayor a 0'
		            }
                }
            },
            "edadMaxima": {
        		selector : '#id_act_maxima',
                validators: {
                	notEmpty: {
                        message: 'La edad m�xima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "edadMinima": {
        		selector : '#id_act_minima',
                validators: {
                	notEmpty: {
                        message: 'La edad m�nima es un campo obligatorio'
                    },
                    lessThan: {
		                value: 35,
		                inclusive: true,
		                message: 'La edad es menor a 35'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'La edad es mayor a 18'
		            }
                }
            },
            "sede": {
        		selector : '#id_act_sede',
                validators: {
                	notEmpty: {
                        message: 'La sede es un campo obligatorio'
                    },
                    stringLength :{
                    	message: 'La sede es de 2 a 20 caracteres',
                    	min : 2,
                    	max : 20
                    }
                }
            },
            "deporte.idDeporte": {
        		selector : '#id_act_deporte',
                validators: {
                	notEmpty: {
                        message: 'El deporte un campo obligatorio'
                    },
                }
            },
          
        }   
    });
</script>
    
</body>
</html> 