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
@Constraint(validatedBy = ContinentValidator.class)
@Documented
public @interface ContinentExists {
    String message() default "Continents: Europe, Asia, Africa, South America, North America, Antarctica, Australia";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
