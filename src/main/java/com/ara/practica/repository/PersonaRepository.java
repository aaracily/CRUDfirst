package com.ara.practica.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ara.practica.model.Persona;

@Repository
public interface PersonaRepository extends CrudRepository<Persona,Long> {
	//List<Persona>findall();
	//List<Persona>findByNombreOrTelefono(String nombre,String telefono);
	List<Persona> findAll();
}
