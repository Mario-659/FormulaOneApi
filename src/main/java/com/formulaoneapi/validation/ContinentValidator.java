package com.formulaoneapi.validation;

import com.formulaoneapi.utils.StringOperations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.List;

public class ContinentValidator implements ConstraintValidator<ContinentExists, String> {

    private final List<String> continents = List.of("Europe", "Asia", "Africa", "South America", "North America", "Antarctica", "Australia");

    @Override
    public void initialize(ContinentExists constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        for (String continent: continents) {
            if (continent.equalsIgnoreCase(value)) {
                value = StringOperations.capitalize(value);
            }
        }
        return continents.contains(value);
    }
}
