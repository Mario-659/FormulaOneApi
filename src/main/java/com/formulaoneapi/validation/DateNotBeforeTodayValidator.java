package com.formulaoneapi.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.time.LocalDate;

public class DateNotBeforeTodayValidator implements ConstraintValidator<IsNotBeforeToday, LocalDate> {

    @Override
    public void initialize(IsNotBeforeToday constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(LocalDate value, ConstraintValidatorContext context) {
        return !value.isBefore(LocalDate.now());
    }
}
