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
@Constraint(validatedBy = DateNotBeforeTodayValidator.class)
@Documented
public @interface IsNotBeforeToday {
    String message() default "Date cannot be less than today";

    Class<?>[] groups() default { };

    Class<? extends Payload>[] payload() default { };
}
