package passjaso;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.unicology.dao.passjaso.PassJasoDAO;
import com.unicology.dto.passjaso.PassJasoDTO;

public class Index {
      
	// 크롤링할 메인페이지 sub_url변수에 저장
	static String front_url = "http://www.saramin.co.kr/zf_user/public-recruit/coverletter-list/page/";
	static int page = 1;
	static String url = front_url + page;
	
	static int fi = 0;
  
	public static void main(String[] args) throws IOException{
		// 페이지 카운팅 변수
		int row_count = 0;
		// 전체 저장수 카운팅 변수
		int total_count = 0;
		ArrayList<String> title = new ArrayList<>();
		ArrayList<String> href = new ArrayList<>();
		ArrayList<String> supportingField = new ArrayList<>();
		
		while(page <= 337) {
			row_count = 0;
			// 메인페이지 url을 Jsoup라이브러리 Document타입 root_url변수로 저장
			Document root_url = Jsoup.connect(url).get();
			
			// root_url변수에서 #listArea .td_apply_subject > h2 > a 태그만 선택해 Elements배열타입 title_Tag변수에 저장 [제목 크롤링]
			Elements title_Tag = root_url.select("#listArea .td_apply_subject > h2 > a");
			
			// root_url변수에서 #listArea .td_apply_subject > h2 > a 태그만 선택해 Elements배열타입 title_Tag변수에 저장 [제목 크롤링]
			Elements href_Tag = root_url.select("#listArea .td_apply_subject > h2 > a");
			
			// root_url변수에서 #listArea > table > tbody > tr > td:nth-child(3) 태그만 선택해 Elements배열타입 supportingField_Tag변수에 저장 [지원분야 크롤링]
			Elements supportingField_Tag = root_url.select("#listArea > table > tbody > tr > td:nth-child(3)");
			
			// title_Tag배열 변수의 index만큼 반복
			for(int i = 0; i < title_Tag.size(); i++) {
                
				// 분야는 배치로 ArrayList에 저장
				// 본페이지의 필요한 데이터만 추출 배열에 저장								
				String titleTag = title_Tag.get(i).text();						
				String hrefTag = href_Tag.get(i).text();		
				hrefTag = "http://www.saramin.co.kr" + hrefTag;	
				String supportingFieldTag = supportingField_Tag.get(i).text();						
						
				title.add(titleTag);	
				href.add(hrefTag);	
				supportingField.add(supportingFieldTag);							
			}
			
			// 크롤링 시작페이지 출력
			System.out.println();
			System.out.println("========================================" + page + "페이지========================================");
			System.out.println();	
			
			for(Element element:href_Tag) {
				row_count += 1;
				total_count += 1;
				//element(contents_Tag)에 href속성값을 main_sub_url에 저장
				String main_sub_url = element.attr("href");
                 
				// main_sub_url 변수값에 "/zf_user/public-recruit/"이 포함될경우 아래 조건문 이동
				if(main_sub_url.contains("/zf_user/public-recruit/")) {
					// "http://www.jobkorea.co.kr" + main_sub_url을 Jsoup라이브러리 Document타입 doc변수로 저장
					Document doc = Jsoup.connect("http://www.saramin.co.kr" + main_sub_url).get();
					System.out.println("현재 접속할 url주소 : " + "http://www.saramin.co.kr" + main_sub_url);
                        
					// doc변수에서 button > span.tx태그만 선택해 Elements배열타입 company_Tag변수에 저장 [회사명 크롤링]
					Elements company_Tag = doc.select(".tit_company_name");
					
					//company_Tag의 i번째 인덱스의 텍스트만 title변수에 저장
					String company = company_Tag.text();
					
					// title_count행 출력
					System.out.println();
					System.out.println("회사명 : " + company);
					System.out.println("제목 : " + title.get(fi));
					System.out.println("웹 주소 : " + href.get(fi));
					System.out.println("지원 분야 : " + supportingField.get(fi));
                    System.out.println();	                        
					
                    // jDto 에 변수 저장 [.get(fi) : 배열변수의 인덱스를 지정시 String 타입으로 변경 ]
                    PassJasoDTO pDto = new PassJasoDTO(company, title.get(fi), href.get(fi), supportingField.get(fi));
                    PassJasoDAO pDao = PassJasoDAO.getInstance();
                    // DAO에 Jaso_Insert클래스에 jDto를 매게변수로 보냄
					pDao.PassJaso_Insert(pDto);
					
				}
				// field 다음 인덱스를 가져오기위해 fi변수 1증가
				fi += 1;
				System.out.println();
				System.out.println("========================================" + page + "페이지 총 " + row_count + "건 저장========================================");
				System.out.println();	
			}
			
			page++;
			url = front_url + page;
		}
		
		System.out.println("=============================== 총 " + total_count + " 건 크롤링 완료 ===============================");
	
	}	
}
