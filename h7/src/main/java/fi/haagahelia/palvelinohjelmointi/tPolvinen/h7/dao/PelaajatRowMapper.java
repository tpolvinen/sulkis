package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.PelaajaImpl;


public class PelaajatRowMapper implements RowMapper<Pelaaja> {

	public Pelaaja mapRow(ResultSet rs, int rowNum) throws SQLException {
		Pelaaja p = new PelaajaImpl();
		
		p.setId(rs.getInt("id"));
		p.setNimi(rs.getString("nimi"));
		p.setVoittolkm(rs.getInt("voittolkm"));
		
		return p;
	}

}
