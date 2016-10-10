package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean;

public interface Pelaaja {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getNimi();
	public abstract void setNimi(String nimi);

	
	public abstract Integer getVoittolkm();
	public abstract void setVoittolkm(Integer voittolkm);

}
