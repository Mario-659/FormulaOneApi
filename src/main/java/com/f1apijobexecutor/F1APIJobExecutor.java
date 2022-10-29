package com.f1apijobexecutor;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

public class F1APIJobExecutor {
    private final String entryPoint = "https://ergast.com/api/f1";
    private final String suffix = "json";
    private final List<String> supportedCallbacks = Arrays.asList("Drivers", "Tracks", "GrandPrix", "Results");


    public JSONArray fetchDataFromF1API(List<String> parameters, String supportedCallback) {
        try {
            URL url = new URL(createGetRequest(parameters));
            HttpURLConnection connection = openConnection(url);
            String responseContent = parseHttpRequestResponse(new InputStreamReader(connection.getInputStream()));
            connection.disconnect();
            if (!supportedCallbacks.contains(supportedCallback))
                return null;
            if (supportedCallback.equals("Drivers"))
                return new JSONObject(responseContent).getJSONObject("MRData").getJSONObject("DriverTable").getJSONArray("Drivers");
            if (supportedCallback.equals("Tracks"))
                return new JSONObject(responseContent).getJSONObject("MRData").getJSONObject("CircuitTable").getJSONArray("Circuits");
            if (supportedCallback.equals("GrandPrix") || supportedCallback.equals("Results"))
                return new JSONObject(responseContent).getJSONObject("MRData").getJSONObject("RaceTable").getJSONArray("Races");
        } catch (IOException | JSONException e) {
            return null;
        }
        return null;
    }

    // @param: parameters has to be in particular order
    private String createGetRequest(List<String> parameters) {
        StringBuilder request = new StringBuilder(entryPoint);
        for (String parameter: parameters) {
            request.append("/").append(parameter);
        }
        request.append("." + suffix);
        return request.toString();
    }
    private HttpURLConnection openConnection(URL url) throws IOException {
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.setDoOutput(true);
        con.setRequestProperty("Content-Type", "application/json");
        return con;
    }

    private String parseHttpRequestResponse(InputStreamReader stream) throws IOException {
        BufferedReader in = new BufferedReader(stream);
        String inputLine;
        StringBuilder content = new StringBuilder();
        while ((inputLine = in.readLine()) != null) {
            content.append(inputLine);
        }
        in.close();
        return content.toString();
    }

    public static void main(String[] args) throws JSONException {
        F1APIJobExecutor f1APIJobExecutor = new F1APIJobExecutor();
        JSONArray drivers = f1APIJobExecutor.fetchDataFromF1API(Arrays.asList("2022", "drivers"), "Drivers");
        for (int i = 0; i < drivers.length(); i++) {
            JSONObject driver = drivers.getJSONObject(i);
            String nr = (String) driver.get("permanentNumber"), first_name = (String) driver.get("givenName"), last_name = (String) driver.get("familyName"), dob = (String) driver.get("dateOfBirth");
            System.out.println(nr + " " + first_name + " " + last_name + " " + dob);
        }
    }

}
