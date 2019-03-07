package com.sh.common.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JSONToListUtil {
	
	public static List jsonToList(String jsonStr,Class<?> elementClasses){
		ObjectMapper mapper = new ObjectMapper();
		JavaType javaType = mapper.getTypeFactory().constructParametricType(ArrayList.class, elementClasses);
		try {
		return mapper.readValue(jsonStr, javaType);
		} catch (JsonParseException e) {
		e.printStackTrace();
		} catch (JsonMappingException e) {
		e.printStackTrace();
		} catch (IOException e) {
		e.printStackTrace();
		}
		return null;

		}
		

}
