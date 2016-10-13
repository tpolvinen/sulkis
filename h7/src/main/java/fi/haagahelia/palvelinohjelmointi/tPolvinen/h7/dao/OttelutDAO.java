package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Ottelu;
import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao.OttelutRowMapper;

@Repository
public class OttelutDAO {

	@Inject
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	/**
	 * Tallettaa parametrina annetun ottelun tietokantaan. Tietokannan
	 * generoima id asetetaan parametrina annettuun olioon.
	 */
	public void talleta(Ottelu o) {
		final String sql = "INSERT INTO ottelut("
				+ "pelaaja1, pelaaja2, pvm, "
				+ "p1era1, p2era1, "
				+ "p1era2, p2era2, "
				+ "p1era3, p2era3, "
				+ "voittaja) "
				+ "values("
				+ "?,?,CURDATE(),"
				+ "?,?,"
				+ "?,?,"
				+ "?,?,"
				+ "?)";

		// anonyymi sisäluokka tarvitsee vakioina välitettävät arvot,
		// jotta roskien keruu onnistuu tämän metodin suorituksen päättyessä.
		final String pelaaja1 = o.getPelaaja1();
		final String pelaaja2 = o.getPelaaja2();
//		final Date pvm = o.getPvm();
		final int p1era1 = o.getP1era1();
		final int p2era1 = o.getP2era1();
		final int p1era2 = o.getP1era2();
		final int p2era2 = o.getP2era2();
		final int p1era3 = o.getP1era3();
		final int p2era3 = o.getP2era3();
		final String voittaja = o.getVoittaja();
		

		// jdbc pistää generoidun id:n tänne talteen
		KeyHolder idHolder = new GeneratedKeyHolder();

		// suoritetaan päivitys "itse" määritellyllä PreparedStatementCreatorilla
		// ja KeyHolderilla
		jdbcTemplate.update(new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(sql, new String[] { "id" });
				ps.setString(1, pelaaja1);
				ps.setString(2, pelaaja2);
//				ps.setDate(parameterIndex, x); //tätä ei tarvita, tässä vain muistutuksena
				ps.setInt(3, p1era1);
				ps.setInt(4, p2era1);
				ps.setInt(5, p1era2);
				ps.setInt(6, p2era2);
				ps.setInt(7, p1era3);
				ps.setInt(8, p2era3);
				ps.setString(9, voittaja);
				return ps;
			}
		}, idHolder);

		// tallennetaan id takaisin beaniin, koska
		// kutsujalla pitäisi olla viittaus samaiseen olioon
		o.setId(idHolder.getKey().intValue());

	}
	
	/**
	 * Haetaan lista kaikista otteluista
	 */
	public List<Ottelu> haeKaikkiOttelut() {

		String sql = "SELECT id, "
				+ "pelaaja1,  pelaaja2, pvm, "
				+ "p1era1, p2era1, "
				+ "p1era2, p2era2, "
				+ "p1era3, p2era3, voittaja FROM ottelut";
		RowMapper<Ottelu> mapper = new OttelutRowMapper();
		List<Ottelu> ottelutlista = jdbcTemplate.query(sql, mapper);

		return ottelutlista;
	}
	
}
