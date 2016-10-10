package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.util;
import java.util.Scanner;

import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class SalasanaKryptaajaKomentoriviClient {

	/**
	 * @param args
	 */
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		Scanner lukija = new Scanner(System.in);
		StandardPasswordEncoder spe = new StandardPasswordEncoder();
		System.out.print("Anna salasana: ");
		String salasana = lukija.nextLine();
		String kryptattuna = spe.encode(salasana);
		System.out.println("Salasanasi on kryptattuna (random suola mukana): " +kryptattuna);
		

	}

}
