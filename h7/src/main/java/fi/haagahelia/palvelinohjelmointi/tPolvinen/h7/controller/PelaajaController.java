package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.controller;

import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.PelaajaImpl;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.PelaajatDAO;

@Controller
@RequestMapping (value="/pelaajat")
public class PelaajaController {
	
//	@Inject
//	private PelaajatDAO dao;
//	
//	public PelaajatDAO getDao() {
//		return dao;
//	}
//
//	public void setDao(PelaajatDAO dao) {
//		this.dao = dao;
//	}
	
	//KAIKKIEN TIETOJEN NÄYTTÄMINEN
	@RequestMapping(value="/lista", method=RequestMethod.GET)
	public String naytaKaikki(@ModelAttribute(value="uusipelaaja") PelaajaImpl pelaaja, Model model) {
//		List <Pelaaja> voittolista = dao.haeKaikki();
//		model.addAttribute("voittolista", voittolista);
		return "???";
	}
	
	//PELAAJAFORMIN TEKEMINEN
	@RequestMapping(value="uusipelaaja", method=RequestMethod.GET)
	public String getPelaaja(Model model) { 
		Pelaaja tyhjapelaaja = new PelaajaImpl();
		model.addAttribute("pelaaja", tyhjapelaaja);
		return "secure/pelaaja";
	}
			
	//PELAAJAFORMIN TIETOJEN VASTAANOTTO
	@RequestMapping(value="uusipelaaja", method=RequestMethod.POST)
	public String createPelaaja(@ModelAttribute(value="pelaaja") @Valid PelaajaImpl pelaaja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "secure/pelaaja";
		} else {
//			dao.talleta(pelaaja);
			return "redirect:/pelaajat/lista";
		}
	}
}
