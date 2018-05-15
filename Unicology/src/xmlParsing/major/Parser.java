package xmlParsing.major;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import javax.xml.parsers.*;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.w3c.dom.*;
import org.xml.sax.SAXException;


import org.w3c.dom.Document;

public class Parser {

		public ArrayList<HashMap<String, Object>> parserTest() throws ParserConfigurationException, UnsupportedEncodingException,IOException {
			
			ArrayList<HashMap<String, Object>> testList = new ArrayList<HashMap<String, Object>>();
			
			String addr = "http://www.career.go.kr/cnet/openapi/getOpenApi?apiKey=";
			String servicekey = "7544751231e0eac17f5411fc92e98399";
			String parameter = "";
			
			//서비스 인코딩
			servicekey = URLEncoder.encode(servicekey,"UTF-8");
			//20건식 23 460개
			//parameter setting 
						parameter = parameter + "&" + "svcType=api";
						parameter = parameter + "&" + "svcCode=SCHOOL";
						parameter = parameter + "&" + "contentType=xml";
						parameter = parameter + "&" + "gubun=univ_list";
						parameter = parameter + "&" + "perPage=440";
			
			addr = addr + servicekey + parameter;
			
			DocumentBuilderFactory f = DocumentBuilderFactory.newInstance();
			DocumentBuilder parser = f.newDocumentBuilder();
			
			Document xmlDoc = null;
			String parseUrl = addr;
			try {
				xmlDoc = parser.parse(parseUrl);
			} catch (Exception e) {
				e.printStackTrace();
			}
			Element root = xmlDoc.getDocumentElement();
			
			int length = root.getElementsByTagName("content").getLength();
			
			for (int i = 0; i < length; i++) {
				Node schoolName = root.getElementsByTagName("schoolName").item(i);
				Node schoolGubun = root.getElementsByTagName("schoolGubun").item(i);
				Node schoolType = root.getElementsByTagName("schoolType").item(i);
				Node region = root.getElementsByTagName("region").item(i);
				//Node searchSchulNm 검색 키워드 (학교명)
				
				HashMap<String, Object> parseTest = new HashMap<String, Object>();
				parseTest.put("schoolName", schoolName.getTextContent());
				parseTest.put("schoolGubun", schoolGubun.getTextContent());
				parseTest.put("schoolType", schoolType.getTextContent());
				parseTest.put("region", region.getTextContent());
				testList.add(parseTest);
			}
			
			return testList;
		}
}
