package com.empresa.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.empresa.entity.Modalidad;
import com.empresa.repository.ModalidadRepository;

@Service
public class ModalidadServiceImpl implements ModalidadService{

	@Autowired
	private ModalidadRepository repository;

	@Override
	public List<Modalidad> listaModalidad() {
		return repository.findAll();
	}

	@Override
	public Modalidad insertaActualizaModalidad(Modalidad obj) {
		return repository.save(obj);
	}

	@Override
	public void eliminaModalidad(int id) {
		repository.deleteById(id);
	}

	@Override
	public List<Modalidad> listaModalidadPorNombreLike(String filtro) {
		return repository.listaModalidadPorNombreLike(filtro);
	}

	@Override
	public Optional<Modalidad> obtienePorId(int idModalidad) {
		return repository.findById(idModalidad);
	}

}
