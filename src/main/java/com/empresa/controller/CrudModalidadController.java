package com.empresa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.empresa.entity.Deporte;
import com.empresa.entity.Modalidad;
import com.empresa.service.DeporteService;
import com.empresa.service.ModalidadService;

@Controller
public class CrudModalidadController {
	
	@Autowired
	private DeporteService deporteService;
	
	@Autowired
	private ModalidadService modalidadService;

	@RequestMapping("/listaDeporte")
	@ResponseBody
	public List<Deporte> listaDeporte(){
		List<Deporte> lista = deporteService.listaDeporte();
		return lista;
	}
	
	@RequestMapping("/consultaCrudModalidad")
	@ResponseBody
	public List<Modalidad> consulta(String filtro){
		List<Modalidad> lista = modalidadService.listaModalidadPorNombreLike("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/registraCrudModalidad")
	@ResponseBody
	public Map<String , Object> inserta(Modalidad obj){
		Map<String , Object>  salida = new HashMap<String , Object>();
		try {
			Modalidad objResultado =  modalidadService.insertaActualizaModalidad(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error en el registro");
			}else {
				List<Modalidad> lista = modalidadService.listaModalidad();
				salida.put("lista", lista);
				salida.put("mensaje", "Registro exitoso");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/actualizaCrudModalidad")
	@ResponseBody
	public Map<String , Object> actualiza(Modalidad obj){
		Map<String , Object>  salida = new HashMap<String , Object>();
		try {
			Modalidad objResultado =  modalidadService.insertaActualizaModalidad(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error en la actualización");
			}else {
				List<Modalidad> lista = modalidadService.listaModalidad();
				salida.put("lista", lista);
				salida.put("mensaje", "Actualización exitosa");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	
	@RequestMapping("/eliminaCrudModalidad")
	@ResponseBody
	public Map<String , Object> elimina(String id){
		Map<String , Object>  salida = new HashMap<String , Object>();
		try {
			Optional<Modalidad> optModalidad = modalidadService.obtienePorId(Integer.parseInt(id));
			if (optModalidad.isEmpty()) {
				salida.put("mensaje", "No existe id " + id);
			}else {
				modalidadService.eliminaModalidad(Integer.parseInt(id));
				List<Modalidad> lista = modalidadService.listaModalidad();
				salida.put("lista", lista);
				salida.put("mensaje", "Eliminación exitosa");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/verCrudModalidad")
	public String verInicio() {
		return "crudModalidad";
	}
	
	
}




