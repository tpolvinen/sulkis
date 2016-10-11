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
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Ottelu;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.OtteluImpl;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.PelaajatDAO;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.OttelutDAO;


@Controller
@RequestMapping(value = "/secure")
public class SecureController {
	
	@Inject
	private PelaajatDAO pdao;
	
	public PelaajatDAO getPdao() {
		return pdao;
	}

	public void setPpao(PelaajatDAO pdao) {
		this.pdao = pdao;
	}
	
	@Inject
	private OttelutDAO odao;
	
	public OttelutDAO getOdao() {
		return odao;
	}

	public void setOdao(OttelutDAO odao) {
		this.odao = odao;
	}
	
	

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String paasivu(@ModelAttribute(value="uusipelaaja") PelaajaImpl pelaaja, Model model) {
		List <Pelaaja> voittolista = pdao.haeKaikkiPelaajat();
		model.addAttribute("voittolista", voittolista);
		List <Ottelu> ottelutlista = odao.haeKaikkiOttelut();
		model.addAttribute("ottelutlista", ottelutlista);
		return "secure/main";
	}

}
