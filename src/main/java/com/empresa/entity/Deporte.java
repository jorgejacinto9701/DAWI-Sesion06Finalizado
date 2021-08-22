package com.empresa.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "deporte")
public class Deporte {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "iddeporte")
	private Integer idDeporte;
	
	private String nombre;

	public Integer getIdDeporte() {
		return idDeporte;
	}

	public void setIdDeporte(Integer idDeporte) {
		this.idDeporte = idDeporte;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
