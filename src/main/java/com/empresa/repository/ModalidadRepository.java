package com.empresa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.empresa.entity.Modalidad;

public interface ModalidadRepository extends JpaRepository<Modalidad, Integer> {

	@Query("Select a from Modalidad a where nombre like :fil")
	public abstract List<Modalidad> listaModalidadPorNombreLike(@Param("fil") String filtro);
	
}
