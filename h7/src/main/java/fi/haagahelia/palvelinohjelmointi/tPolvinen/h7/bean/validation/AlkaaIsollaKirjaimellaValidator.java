package fi.haagahelia.palvelinohjelmointi.tPolvinen.h7.bean.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class AlkaaIsollaKirjaimellaValidator implements
ConstraintValidator<AlkaaIsollaKirjaimella, String> {

	public void initialize(AlkaaIsollaKirjaimella alkaaisollakirjaimella) {

	}
	
	public boolean isValid(String value, ConstraintValidatorContext context) {
		if (value == null || value.length() == 0) {
			return true;
		}
		return Character.isUpperCase(value.codePointAt(0));
	}
}
