package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean;

public interface Pelaaja {
	
	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getNimi();
	public abstract void setNimi(String nimi);

	
	public abstract Integer getVoittolkm();
	public abstract void setVoittolkm(Integer voittolkm);

}

//CREATE TABLE pelaajat (
//		id integer NOT NULL auto_increment PRIMARY KEY,
//		nimi varchar(255) NOT NULL UNIQUE,
//		voittolkm integer NOT NULL
//	) ENGINE=InnoDB DEFAULT CHARSET=utf8;