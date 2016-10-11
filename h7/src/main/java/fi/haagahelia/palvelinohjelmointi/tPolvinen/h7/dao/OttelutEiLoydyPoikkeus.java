package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.dao;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(value=HttpStatus.NOT_FOUND)
public class OttelutEiLoydyPoikkeus extends RuntimeException {
	
	public OttelutEiLoydyPoikkeus(Exception cause) {
		super(cause);
	}
	
}
