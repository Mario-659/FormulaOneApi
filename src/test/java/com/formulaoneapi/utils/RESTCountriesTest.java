package com.formulaoneapi.utils;

import com.formulaoneapi.validation.CountryValidator;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class RESTCountriesTest {
    private static RESTCountries rest;

    @BeforeAll
    static void setUp() {
        rest = new RESTCountries();
    }

    @Test
    public void sendRequestError() {
        String parameter = "xx";
        assertFalse(rest.sendRequest(parameter));
    }

    @Test
    public void sendRequestSuccess() {
        String parameter1 = "poland";
        assertTrue(rest.sendRequest(parameter1));
        String parameter2 = "Poland";
        assertTrue(rest.sendRequest(parameter2));
        String parameter3 = "polaND";
        assertTrue(rest.sendRequest(parameter3));
        String parameter4 = "polaND    ";
        assertTrue(rest.sendRequest(parameter4));
    }

    @Test
    public void sendRequestFailsWithLeadingWhitespaces() {
        String parameter5 = "    polaND    ";
        assertFalse(rest.sendRequest(parameter5));
    }
}
