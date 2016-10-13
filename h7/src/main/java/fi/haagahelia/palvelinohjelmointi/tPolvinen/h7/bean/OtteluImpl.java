package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean;

//standardeja jsr303-annotaatioita
import java.sql.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.sun.istack.internal.NotNull;


//itse tehty validaattoriannotaatio
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.validation.AlkaaIsollaKirjaimella;


public class OtteluImpl implements Ottelu {

	private int id;
	
	@Size(min = 1, max = 255)  // ei tarvitse, koska arvo valitaan pelaajat-taulun perusteella
	@AlkaaIsollaKirjaimella
	private String pelaaja1;
	
	@Size(min = 1, max = 255)  // ei tarvitse, koska arvo valitaan pelaajat-taulun perusteella
	@AlkaaIsollaKirjaimella
	private String pelaaja2;
	
	private Date pvm;  //tähän en nyt osaa saman tien tehdä validointia, myöhemmin ehkä! 
	
	@NotNull
    @Min(0)
	@Max(30)
	private int p1era1;
	
	@NotNull
    @Min(0)
	@Max(30)
	private int p2era1;
	
	@NotNull
    @Min(0)
	@Max(30)
	private int p1era2;
	
	@NotNull
    @Min(0)
	@Max(30)
	private int p2era2;
	
	@NotNull
    @Min(0)
	@Max(30)
	private int p1era3;
	
	@NotNull
    @Min(0)
	@Max(30)
	private int p2era3;
	
//	@Size(min = 1, max = 255)  // ei tarvitse, koska arvo tulee pelaajat-taulun perusteella
//	@AlkaaIsollaKirjaimella
	private String voittaja;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPelaaja1() {
		return pelaaja1;
	}

	public void setPelaaja1(String pelaaja1) {
		this.pelaaja1 = pelaaja1;
		
	}

	public String getPelaaja2() {
		return pelaaja2;
	}

	public void setPelaaja2(String pelaaja2) {
		this.pelaaja2 = pelaaja2;
	}

	public Date getPvm() {
		return pvm;
	}
	
	public void setPvm(Date pvm) {
		this.pvm = pvm;
	}

	public int getP1era1() {
		return p1era1;
	}

	public void setP1era1(int p1era1) {
		this.p1era1 = p1era1;		
	}

	public int getP2era1() {
		return p2era1;
	}

	public void setP2era1(int p2era1) {
		this.p2era1 = p2era1;
	}

	public int getP1era2() {
		return p1era2;
	}

	public void setP1era2(int p1era2) {
		this.p1era2 = p1era2;
	}

	public int getP2era2() {
		return p2era2;
	}

	public void setP2era2(int p2era2) {
		this.p2era2 = p2era2;
	}

	public int getP1era3() {
		return p1era3;
	}

	public void setP1era3(int p1era3) {
		this.p1era3 = p1era3;
	}

	public int getP2era3() {
		return p2era3;
	}

	public void setP2era3(int p2era3) {
		this.p2era3 = p2era3;		
	}

	public String getVoittaja() {
		return voittaja;
	}

	public void setVoittaja(String voittaja) {
		this.voittaja = voittaja;
		
	}

	@Override
	public String toString() {
		return "OtteluImpl [id=" + id + ", pelaaja1=" + pelaaja1
				+ ", pelaaja2=" + pelaaja2 + ", pvm=" + pvm + ", p1era1="
				+ p1era1 + ", p2era1=" + p2era1 + ", p1era2=" + p1era2
				+ ", p2era2=" + p2era2 + ", p1era3=" + p1era3 + ", p2era3="
				+ p2era3 + ", voittaja=" + voittaja + "]";
	}

}
