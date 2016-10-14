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

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Ottelu;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.OtteluImpl;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.PelaajaImpl;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.OttelutDAO;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.PelaajatDAO;

@Controller
@RequestMapping(value = "/secure")
public class SecureController {
	
	
	//kopypaste PelaajaControllerista:
	@Inject
	private PelaajatDAO pDao;
	
	public PelaajatDAO getPDao() {
		return pDao;
	}

	public void setPDao(PelaajatDAO pDao) {
		this.pDao = pDao;
	}
	
	//muutettuna otteluita varten:
	@Inject
	private OttelutDAO oDao;
	
	public OttelutDAO getODao() {
		return oDao;
	}

	public void setODao(OttelutDAO oDao) {
		this.oDao = oDao;
	}
	
	

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String paasivu(PelaajaImpl pelaaja, Model model) {
		
		List <Pelaaja> pelaajalista = pDao.haeKaikkiPelaajat();
		model.addAttribute("pelaajalista", pelaajalista);
		
		List <Ottelu> ottelulista = oDao.haeKaikkiOttelut();
		model.addAttribute("ottelulista", ottelulista);
		
		return "secure/main";
	}

	
	
	
	@RequestMapping(value="/lisaaottelu", method=RequestMethod.GET)
	public String lisaaOttelu(Model model) { //OtteluImpl ottelu, ,  BindingResult result
		
		List <Pelaaja> pelaajalista = pDao.haeKaikkiPelaajat();
		model.addAttribute("pelaajalista", pelaajalista);
		
		Ottelu ottelu = new OtteluImpl();
		model.addAttribute("ottelu", ottelu);
		
		return "secure/lisaaottelu";
	}

	
	
	@RequestMapping(value="/lisaaottelu", method=RequestMethod.POST)
	public String createOttelu(@ModelAttribute(value="ottelu") @Valid OtteluImpl ottelu, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "secure/lisaaottelu";
		} else {
			oDao.talleta(ottelu);
			
			List <Pelaaja> pelaajalista = pDao.haeKaikkiPelaajat();
			model.addAttribute("pelaajalista", pelaajalista);
			
			List <Ottelu> ottelulista = oDao.haeKaikkiOttelut();
			model.addAttribute("ottelulista", ottelulista);
			
			return "secure/main";
		}
	}
}

