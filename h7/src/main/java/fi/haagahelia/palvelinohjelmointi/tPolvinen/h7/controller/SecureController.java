package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.PelaajaImpl;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.PelaajatDAO;

@Controller
@RequestMapping(value = "/secure")
public class SecureController {
	//kopypaste PelaajaControllerista:
	@Inject
	private PelaajatDAO pDao;
	
	public PelaajatDAO getDao() {
		return pDao;
	}

	public void setDao(PelaajatDAO pDao) {
		this.pDao = pDao;
	}
	
	
	

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String paasivu(PelaajaImpl pelaaja, Model model) {
		List <Pelaaja> pelaajalista = pDao.haeKaikkiPelaajat();
		model.addAttribute("pelaajalista", pelaajalista);
		return "secure/main";
	}


}
