package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value=HttpStatus.NOT_FOUND)
public class PelaajatEiLoydyPoikkeus extends RuntimeException {

	public PelaajatEiLoydyPoikkeus(Exception cause) {
		super(cause);
	}
	
}