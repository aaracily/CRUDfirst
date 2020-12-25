package com.ara.practica.service;




import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.ara.practica.model.Persona;
import com.ara.practica.repository.PersonaRepository;

@Service
public class PersonaService {
	
	private final PersonaRepository rep;
	
	public PersonaService(PersonaRepository rep) {
		this.rep = rep;
	}
	
	public List<Persona>listar(){
		return rep.findAll();
	}
	public Persona crear(Persona per) {
		return rep.save(per);
	}
	public Persona editar(@Valid Persona per) {
		return rep.save(per);
	}
	public Persona encontrar(Long id) {
		Optional<Persona>personaid = rep.findById(id);
		if(personaid.isPresent()) {
			return personaid.get();
		}else {
			return null;
		}
	}
	public void eliminar (Long id) {
		rep.deleteById(id);
	}
}
