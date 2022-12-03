package com.formulaoneapi.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

public class StringOperationsTest {
    @Test
    public void capitalizeTest() {
        String str1 = "test";
        assertEquals("Test", StringOperations.capitalize(str1));

        String str2 = "teST";
        assertEquals("Test", StringOperations.capitalize(str2));

        String str3 = "";
        assertEquals("", StringOperations.capitalize(str3));

        assertNull(StringOperations.capitalize(null));
    }
}
