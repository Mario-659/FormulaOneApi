package com.formulaoneapi.utils;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public class RESTCountries {
    private final String api = "https://restcountries.com/v3.1/name/";

    public boolean sendRequest(String parameter) {
        HttpURLConnection connection = null;
        try {
            URL url = new URL(createGetRequest(parameter));
            connection = openConnection(url);
            int response = connection.getResponseCode();
            if (200 <= response && response <= 299)
                return true;
        } catch (IOException e) {
            return false;
        } finally {
            if (connection != null)
                connection.disconnect();
        }
        return false;
    }

    private String createGetRequest(String parameter) {
        return api + parameter;
    }

    private HttpURLConnection openConnection(URL url) throws IOException {
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.setDoOutput(true);
        con.setRequestProperty("Content-Type", "application/json");
        return con;
    }
}
