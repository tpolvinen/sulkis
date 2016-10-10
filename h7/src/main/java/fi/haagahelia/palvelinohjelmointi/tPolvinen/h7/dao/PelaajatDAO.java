package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;

import java.util.List;

import fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.Pelaaja;

public interface PelaajatDAO {

	public abstract void talleta(Pelaaja pelaaja);

	public abstract List<Pelaaja> haeKaikki();

}