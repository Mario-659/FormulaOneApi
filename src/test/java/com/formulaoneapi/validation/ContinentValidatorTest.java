package com.formulaoneapi.validation;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ContinentValidatorTest {

    private static ContinentValidator validator;

    @BeforeAll
    static void setUp() {
        validator = new ContinentValidator();
    }

    @Test
    public void continentExists() {
        String continent = "Europe";
        assertTrue(validator.isValid(continent, null));
    }

    @Test
    public void continentDoesNotExists() {
        String continent = "Poland";
        assertFalse(validator.isValid(continent, null));
    }

    @Test
    public void continentDetectCaseSensitiveMatch() {
        String continent1 = "europe";
        assertTrue(validator.isValid(continent1, null));
        String continent2 = "eurOPE";
        assertTrue(validator.isValid(continent2, null));
    }
}
