package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean;

//standardeja jsr303-annotaatioita
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

//hibernatevalidaattorin oma annotaatio
import org.hibernate.validator.constraints.Email;

//itse tehty validaattoriannotaatio
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.validation.AlkaaIsollaKirjaimella;

public class PelaajaImpl implements Pelaaja {
	
	private int id;
	
	@Size(min = 1, max = 255)
	@AlkaaIsollaKirjaimella
	private String nimi;
	
	@Min(0)
	private Integer voittolkm;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getNimi() {
		return nimi;
	}
	public void setNimi(String nimi) {
		this.nimi = nimi;
	}

	public Integer getVoittolkm() {
		return voittolkm;
	}
	public void setVoittolkm(Integer voittolkm) {
		this.voittolkm = voittolkm;
	}
	@Override
	public String toString() {
		return "PelaajaImpl [id=" + id + ", nimi=" + nimi + ", voittolkm="
				+ voittolkm + "]";
	}
	
	
}
