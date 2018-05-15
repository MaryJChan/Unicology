package xmlParsing.major;

import java.util.ArrayList;
import java.util.HashMap;

public class TestMain {
	public static void main(String[] args) throws Exception{
		
		
		Parser parser = new Parser();
		ArrayList<HashMap<String, Object>> testList = parser.parserTest();
		for (int i = 0; i < testList.size(); i++) {
			HashMap<String, Object> test = testList.get(i);
			System.out.println("-----------------------------------");
			System.out.println("schoolName"+test.get("schoolName"));
			System.out.println("schoolGubun"+test.get("schoolGubun"));
			System.out.println("schoolType"+test.get("schoolType"));
			System.out.println("region"+test.get("region"));
		}
	}
	
	
}
