package com.ara.practica.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ara.practica.model.Persona;
import com.ara.practica.service.PersonaService;

@Controller
public class PersonaController {
	private final PersonaService ser;
	public PersonaController(PersonaService ser) {
		this.ser = ser;
	}
	
	@GetMapping("/listar")
	public String principal (Model model) {
		List<Persona>personas = ser.listar();
		model.addAttribute("personas", personas);
		return "index.jsp";
	}
	@GetMapping("/nuevo")
	public String nuevo(Model model) {
		model.addAttribute("persona", new Persona());
		return "form.jsp";
	}
	@RequestMapping(value="/guardar", method = RequestMethod.POST)
	public String guardar( @ModelAttribute("persona")Persona persona) {
		
		ser.crear(persona);
			return "redirect:/listar";
		}
	
		
	
	@RequestMapping(value="/guardareditar", method = RequestMethod.POST)
	public String guardar(@Valid @ModelAttribute("persona")Persona persona, BindingResult result) {
		if(result.hasErrors()) {
			return "form.jsp";
		}else {
		ser.editar(persona);
			return "redirect:/listar";
		}
		
	}
	@GetMapping ("/editar/{id}")
	public String editar (@PathVariable("id") Long id, Model model) {
		Persona personaId = ser.encontrar(id);
		model.addAttribute("persona", personaId);
		return "actualizar.jsp";
	}
	@GetMapping("eliminar/{id}")
	public String eliminar(@PathVariable("id")Long id) {
		ser.eliminar(id);
		return "redirect:/listar";
	}
	
}

