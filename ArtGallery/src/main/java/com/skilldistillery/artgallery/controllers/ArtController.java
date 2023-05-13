package com.skilldistillery.artgallery.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.artgallery.data.ArtDAO;
import com.skilldistillery.artgallery.entities.Art.Art;

@Controller
public class ArtController {
	
	@Autowired
	private ArtDAO dao;
	
	@RequestMapping(path={"/","index.do"})
	public String index(Model model) {
		model.addAttribute("artList", dao.findAll());
	  return "index"; 
	}
	
	@RequestMapping("getShow.do")
	public String getArtId(@RequestParam int id, Model model) {
		Art art = dao.findById(id);
		model.addAttribute("art", art);
		return "gallery/artshow";
		
	}
	
	
	@RequestMapping(path={"add.do"}, method = RequestMethod.POST)
	public String createArt(Art art, RedirectAttributes redir) {
		redir.addFlashAttribute("newArt", dao.create(art));
		//model.addAttribute("newArt", dao.create(art));
		return "redirect:index.do";
	}
	
	@RequestMapping(path={"sendToAdd.do"})
	public String toAddArt() {
		return "gallery/addArt";
	}
	
	
	@RequestMapping(path={"update.do"})
	public String updateArt() {	
		return "gallery/editArt";
	}
	
	@RequestMapping(path={"edit.do"}, method = RequestMethod.POST)
	public String editArt(Art art, int id, RedirectAttributes redir) {
		Art update = dao.update(id, art);	
		redir.addFlashAttribute("edit", update);
		return "redirect:index.do";
	}
	
	
	@RequestMapping(path={"delete.do"})
	public String deleteArt(int id, RedirectAttributes redir) {
		dao.deleteById(id);
		return "redirect:index.do";
	}

}
