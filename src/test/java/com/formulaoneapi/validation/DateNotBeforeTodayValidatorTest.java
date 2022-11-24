package com.formulaoneapi.validation;

import java.time.LocalDate;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class DateNotBeforeTodayValidatorTest {

    private static DateNotBeforeTodayValidator validator;

    @BeforeAll
    static void setUp() {
        validator = new DateNotBeforeTodayValidator();
    }

    @Test
    public void shouldPassDateEqualToToday() {
        LocalDate today = LocalDate.now();

        assertTrue(validator.isValid(today, null));
    }

    @Test
    public void shouldPassDateGreaterThanToday() {
        LocalDate tomorrow = LocalDate.now().plusDays(1);

        assertTrue(validator.isValid(tomorrow, null));
    }

    @Test
    public void shouldNotPassDateLowerThanToday() {
        LocalDate yesterday = LocalDate.now().minusDays(1);

        assertFalse(validator.isValid(yesterday, null));
    }
}
