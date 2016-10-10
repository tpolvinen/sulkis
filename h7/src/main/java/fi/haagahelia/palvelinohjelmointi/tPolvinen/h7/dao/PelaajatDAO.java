package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;

public class PelaajatDAO {
	
	@Inject
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	
	/**
	 * Tallettaa parametrina annetun pelaajan tietokantaan. Tietokannan
	 * generoima id asetetaan parametrina annettuun olioon.
	 */
	public void talleta(Pelaaja p) {
		final String sql = "INSERT INTO pelaajat(nimi, voittolkm) values(?,0)";

		// anonyymi sisäluokka tarvitsee vakioina välitettävät arvot,
		// jotta roskien keruu onnistuu tämän metodin suorituksen päättyessä.
		final String nimi = p.getNimi();

		// jdbc pistää generoidun id:n tänne talteen
		KeyHolder idHolder = new GeneratedKeyHolder();

		// suoritetaan päivitys "itse" määritellyllä PreparedStatementCreatorilla
		// ja KeyHolderilla
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(
					Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(sql,
						new String[] { "id" });
				ps.setString(1, nimi);
				return ps;
			}
		}, idHolder);

		// tallennetaan id takaisin beaniin, koska
		// kutsujalla pitäisi olla viittaus samaiseen olioon
		p.setId(idHolder.getKey().intValue());

	}

	/**
	 * Haetaan lista kaikista pelaajista
	 */
	public List<Pelaaja> haeKaikki() {

		String sql = "SELECT id, nimi, voittolkm FROM pelaajat";
		RowMapper<Pelaaja> mapper = new PelaajatRowMapper();
		
		List<Pelaaja> pelaajalista = jdbcTemplate.query(sql, mapper);

		return pelaajalista;
	}

}