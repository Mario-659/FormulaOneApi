package com.formulaoneapi.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Target(ElementType.FIELD)
@Retention(RUNTIME)
@Constraint(validatedBy = CountryValidator.class)
@Documented
public @interface CountryExists {
    String message() default "Malformed country name";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
