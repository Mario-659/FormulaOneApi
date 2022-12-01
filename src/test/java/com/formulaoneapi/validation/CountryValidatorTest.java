package com.formulaoneapi.validation;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class CountryValidatorTest {
    private static CountryValidator validator;

    @BeforeAll
    static void setUp() {
        validator = new CountryValidator();
    }

    @Test
    public void countryExists() {
        String country = "Poland";
        assertTrue(validator.isValid(country, null));
    }

    @Test
    public void countryDoesNotExists() {
        String country = "dummy";
        assertFalse(validator.isValid(country, null));
    }

    @Test
    public void continentDetectCaseSensitiveMatch() {
        String c1 = "PolAND";
        assertTrue(validator.isValid(c1, null));
        String c2 = "peRU";
        assertTrue(validator.isValid(c2, null));
    }
}
