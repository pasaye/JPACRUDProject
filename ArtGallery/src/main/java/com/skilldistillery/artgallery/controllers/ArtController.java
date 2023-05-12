package com.skilldistillery.artgallery.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.artgallery.data.ArtDAO;
import com.skilldistillery.artgallery.entities.Art.Art;

@Controller
public class ArtController {
	
	@Autowired
	private ArtDAO dao;
	
	@RequestMapping(path={"/","index.do"})
	public String index(Model model) {
		model.addAttribute("ArtList", dao.findAll());
	  return "index"; 
	}
	
	@RequestMapping("getShow.do")
	public String getArtId(@RequestParam int id, Model model) {
		Art art = dao.findById(id);
		model.addAttribute("Art", art);
		return "gallery/artshow";
		
	}

}
