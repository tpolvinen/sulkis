package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.PelaajaImpl;

@Controller
@RequestMapping(value="/secure/admin")
public class AdminController {
	
	//PELAAJAFORMIN TEKEMINEN tools.jsp -sivulle
	@RequestMapping(value = "/tools", method = RequestMethod.GET)
	public String paasivu(Model model) {
		
		Pelaaja tyhjapelaaja = new PelaajaImpl();
		model.addAttribute("pelaaja", tyhjapelaaja);
		
		return "secure/admin/tools";
	}
	
	//PELAAJAFORMIN TIETOJEN VASTAANOTTO
	@RequestMapping(value="uusipelaaja", method=RequestMethod.POST)
	public String createPelaaja(@ModelAttribute(value="pelaaja") @Valid PelaajaImpl pelaaja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "secure/admin/tools";
		} else {
//			dao.talleta(pelaaja);
			return "secure/main";
		}
	}
}

// Nämä PelaajaControllerista pohjaksi:
//PELAAJAFORMIN TEKEMINEN
//	@RequestMapping(value="uusipelaaja", method=RequestMethod.GET)
//	public String getPelaaja(Model model) { 
//		Pelaaja tyhjapelaaja = new PelaajaImpl();
//		model.addAttribute("pelaaja", tyhjapelaaja);
//		return "secure/pelaaja";
//	}
			
	//PELAAJAFORMIN TIETOJEN VASTAANOTTO
//	@RequestMapping(value="uusipelaaja", method=RequestMethod.POST)
//	public String createPelaaja(@ModelAttribute(value="pelaaja") @Valid PelaajaImpl pelaaja, BindingResult result, Model model) {
//		if (result.hasErrors()) {
//			return "secure/pelaaja";
//		} else {
//			dao.talleta(pelaaja);
//			return "redirect:/pelaajat/lista";
//		}
//	}