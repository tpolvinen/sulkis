package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean;

import java.sql.Date;

public interface Ottelu {

	public abstract int getId();
	public abstract void setId(int id);
	
	public abstract String getPelaaja1();
	public abstract void setPelaaja1(String pelaaja1);
	
	public abstract String getPelaaja2();
	public abstract void setPelaaja2(String pelaaja2);

	public abstract Date getPvm();
	public abstract void setPvm(Date pvm);
	
	public abstract int getP1era1();
	public abstract void setP1era1(int p1era1);
	
	public abstract int getP2era1();
	public abstract void setP2era1(int p2era1);
	
	public abstract int getP1era2();
	public abstract void setP1era2(int p1era2);
	
	public abstract int getP2era2();
	public abstract void setP2era2(int p2era2);
	
	public abstract int getP1era3();
	public abstract void setP1era3(int p1era3);
	
	public abstract int getP2era3();
	public abstract void setP2era3(int p2era3);
	
	public abstract String getVoittaja();
	public abstract void setVoittaja(String voittaja);
	
}

//CREATE TABLE ottelut (
//		id integer NOT NULL auto_increment PRIMARY KEY,
//		pelaaja1 varchar(255) NOT NULL,
//		pelaaja2 varchar(255) NOT NULL,
//		pvm DATE NOT NULL,
//		p1era1 tinyint NOT NULL,
//		p2era1 tinyint NOT NULL,
//		p1era2 tinyint NOT NULL,
//		p2era2 tinyint NOT NULL,
//		p1era3 tinyint NOT NULL,
//		p2era3 tinyint NOT NULL,
//		voittaja varchar(255) NOT NULL
//	) ENGINE=InnoDB DEFAULT CHARSET=utf8;