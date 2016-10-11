package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Ottelu;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.OtteluImpl;


public class OttelutRowMapper implements RowMapper<Ottelu> {
	public Ottelu mapRow(ResultSet rs, int rowNum) throws SQLException {
		Ottelu o = new OtteluImpl();
		
		o.setId(rs.getInt("id"));
		o.setPelaaja1(rs.getString("pelaaja1"));
		o.setPelaaja2(rs.getString("pelaaja2"));
		o.setPvm(rs.getDate("pvm"));
		o.setP1era1(rs.getInt("p1era1"));
		o.setP2era1(rs.getInt("p2era1"));
		o.setP1era2(rs.getInt("p1era2"));
		o.setP2era2(rs.getInt("p2era2"));
		o.setP1era3(rs.getInt("p1era3"));
		o.setP2era3(rs.getInt("p2era3"));
		o.setVoittaja(rs.getString("voittaja"));
		
		return o;
	}
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