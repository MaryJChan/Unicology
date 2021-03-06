package xmlParsing.high;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.xml.parsers.ParserConfigurationException;

import com.unicology.dao.member.UnivDAO;
import com.unicology.dto.member.UnivDTO;

public class TestMain {
	public static void main(String[] args) throws IOException, ParserConfigurationException{
		
		
		Parser parser = new Parser();
		
		ArrayList<HashMap<String, Object>> testList = parser.parserTest();
		
		UnivDAO uDao = UnivDAO.getInstance();
		for (int i = 0; i < testList.size(); i++) {
			HashMap<String, Object> test = testList.get(i);
			String schoolName = null;
			String schoolGubun = null;
			String schoolType = null;
			String region = null;
			schoolName = (String) test.get("schoolName");
			schoolGubun = (String) test.get("schoolGubun");
			schoolType = (String) test.get("schoolType");
			region = (String) test.get("region");
			
			System.out.println("-----------------------------------");
			System.out.println("schoolName"+test.get("schoolName"));
			System.out.println("schoolGubun"+test.get("schoolGubun"));
			System.out.println("schoolType"+test.get("schoolType"));
			System.out.println("region"+test.get("region"));
			
			UnivDTO uDto = new UnivDTO(schoolName, schoolGubun, schoolType, region);
			uDao.UnivDAO_insert(uDto);
		}
	}
	
	
}
