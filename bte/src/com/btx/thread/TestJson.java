package com.btx.thread;

import java.io.IOException;
import java.net.URL;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.json.simple.parser.ParseException;

public class TestJson {

	public static void main(String[] args) {
		String url = "http://binarytradexchange.com:8080/feed/getEURUSD.jsp";
        try {
            String genreJson = IOUtils.toString(new URL(url));
            JSONObject genreJsonObject = (JSONObject) JSONValue.parseWithException(genreJson);
            JSONObject _source=(JSONObject)genreJsonObject.get("_source");
            String yvalue=(String)_source.get("yvalue");
            System.out.println(yvalue);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
}
