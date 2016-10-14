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
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.PelaajaImpl;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.OttelutDAO;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.PelaajatDAO;

@Controller
@RequestMapping(value="/secure/admin")
public class AdminController {

//	@RequestMapping(value = "/tools", method = RequestMethod.GET)
//	public String paasivu(Model model) {

//		return "secure/admin/tools";
		
		@Inject
		private PelaajatDAO pDao;
		
		public PelaajatDAO getDao() {
			return pDao;
		}
	
		public void setDao(PelaajatDAO pDao) {
			this.pDao = pDao;
		}
		
		@Inject
		private OttelutDAO oDao;
		
		public OttelutDAO getODao() {
			return oDao;
		}

		public void setODao(OttelutDAO oDao) {
			this.oDao = oDao;
		}
		
		//PELAAJAFORMIN TEKEMINEN tools.jsp -sivulle
		@RequestMapping(value = "/tools", method = RequestMethod.GET)
		public String paasivu(Model model) {
			
			Pelaaja uusipelaaja = new PelaajaImpl();
			model.addAttribute("uusipelaaja", uusipelaaja);
			
			return "secure/admin/tools";
		}
		
		//PELAAJAFORMIN TIETOJEN VASTAANOTTO tools.jsp -sivulta
		@RequestMapping(value="/tools", method=RequestMethod.POST)
		public String createPelaaja(@ModelAttribute(value="uusipelaaja") @Valid PelaajaImpl uusipelaaja, BindingResult result, Model model) {
			if (result.hasErrors()) {
				return "secure/admin/tools";
			} else {
				pDao.talleta(uusipelaaja);
				
				List <Pelaaja> pelaajalista = pDao.haeKaikkiPelaajat();
				model.addAttribute("pelaajalista", pelaajalista);
				
				List <Ottelu> ottelulista = oDao.haeKaikkiOttelut();
				model.addAttribute("ottelulista", ottelulista);
				
				return "redirect:/secure/main";
			}
		}
	
		@RequestMapping(value = "/pelaajatpoisto", method = RequestMethod.GET)
		public String pelaajatpois(Model model) {
			
			pDao.poistaKaikkiPelaajat();
			
			return "redirect:/secure/main";
		}
		@RequestMapping(value = "/ottelutpoisto", method = RequestMethod.GET)
		public String otteluttpois(Model model) {
			
			oDao.poistaKaikkiOttelut();
			
			return "redirect:/secure/main";
		}
}
