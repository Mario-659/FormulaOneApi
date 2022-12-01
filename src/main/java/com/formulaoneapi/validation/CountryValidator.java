package com.formulaoneapi.validation;

import com.formulaoneapi.utils.RESTCountries;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CountryValidator implements ConstraintValidator<CountryExists, String> {

    private final RESTCountries restCountries = new RESTCountries();

    @Override
    public void initialize(CountryExists constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {
        value = value.toLowerCase();
        return restCountries.sendRequest(value);
    }
}
