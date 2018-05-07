package employment_information;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.unicology.dao.empinfo.EmpInfoDAO;
import com.unicology.dto.empinfo.EmpInfoDTO;

public class Index {
      
	// 크롤링할 메인페이지 sub_url변수에 저장
	static String front_url = "http://www.saramin.co.kr/zf_user/jobs/list/job-category?page=";
	static String last_url = "&cat_bcd=";
	static int page = 1;
	static int clasificar_page = 1;
	static String url = front_url + page + last_url + clasificar_page;
  
	public static void main(String[] args) throws IOException{
		// 페이지 카운팅 변수
		int row_count = 0;
		String clasificar = null;
		
		while(clasificar_page <= 13) {
			
			if(clasificar_page == 1) {
				clasificar = "경영·사무";
			} else if (clasificar_page == 2) {
				clasificar = "영업·고객상담";
			} else if (clasificar_page == 3) {
				clasificar = "생산·제조";
			} else if (clasificar_page == 4) {
				clasificar = "IT·인터넷";
			} else if (clasificar_page == 5) {
				clasificar = "전문직";
			} else if (clasificar_page == 6) {
				clasificar = "교육";
			} else if (clasificar_page == 7) {
				clasificar = "미디어";
			} else if (clasificar_page == 8) {
				clasificar = "특수계층·공공";
			} else if (clasificar_page == 9) {
				clasificar = "건설";
			} else if (clasificar_page == 10) {
				clasificar = "유통·무역";
			} else if (clasificar_page == 11) {
				clasificar = "서비스";
			} else if (clasificar_page == 12) {
				clasificar = "의료";
			} else if (clasificar_page == 13) {
				clasificar = "IT·인터넷";
			}
			
			while(page <= 10) {
				
				// 메인페이지 url을 Jsoup라이브러리 Document타입 root_url변수로 저장
				Document root_url = Jsoup.connect(url).get();
				
				// root_url변수에서 .company_nm > .str_tit > span 태그만 선택해 Elements배열타입 companyName_Tag변수에 저장 [회사명 크롤링]
				Elements companyName_Tag = root_url.select("#default_list_wrap .company_nm > .str_tit > span");
				
				// root_url변수에서 .job_tit > .str_tit > span 태그만 선택해 Elements배열타입 title_Tag변수에 저장 [공고 제목 크롤링]
				Elements title_Tag = root_url.select("#default_list_wrap .job_tit > .str_tit > span");
				
				// root_url변수에서 .job_tit > .str_tit 태그만 선택해 Elements배열타입 href_Tag변수에 저장 [태그에 href 속성값을 가져오기위해]
				Elements href_Tag = root_url.select("#default_list_wrap .job_tit > .str_tit");
				
				// root_url변수에서 .job_sector > span 태그만 선택해 Elements배열타입 subclass_Tag변수에 저장 [소분류 크롤링]
				Elements subclass_Tag = root_url.select("#default_list_wrap .job_sector");
				
				// root_url변수에서 .recruit_condition > .career 태그만 선택해 Elements배열타입 career_Tag변수에 저장 [경력 조건 크롤링]
				Elements career_Tag = root_url.select("#default_list_wrap .recruit_condition > .career");
				
				// root_url변수에서 .recruit_condition > .education 태그만 선택해 Elements배열타입 education_Tag변수에 저장 [학력 조건 크롤링]
				Elements education_Tag = root_url.select("#default_list_wrap .recruit_condition > .education");
				
				// root_url변수에서 .company_info > .employment_type 태그만 선택해 Elements배열타입 employment_type_Tag변수에 저장 [근무 조건 크롤링]
				Elements employmentType_Tag = root_url.select("#default_list_wrap .company_info > .employment_type");
				
				// root_url변수에서 .company_info > .work_place 태그만 선택해 Elements배열타입 work_place_Tag변수에 저장 [근무 위치 크롤링]
				Elements work_place_Tag = root_url.select("#default_list_wrap .work_place");
				
				// root_url변수에서 .support_info > .deadlines 태그만 선택해 Elements배열타입 deadlines변수에 저장 [마감일 크롤링]
				Elements deadlines_Tag = root_url.select("#default_list_wrap .support_info > .deadlines");
				
				// 크롤링 시작페이지 출력
				System.out.println();
				System.out.println("========================================[ " + clasificar + " ] " + page + "페이지========================================");
				System.out.println();	
				
				System.out.println();
				System.out.println("회사명 배열크기 : " + companyName_Tag.size());
				System.out.println("제목 배열크기 : " + title_Tag.size());
				System.out.println("웹주소 배열크기 : " + href_Tag.size());
				System.out.println("소분류 배열크기 : " + subclass_Tag.size());
				System.out.println("경력조건 배열크기 : " + career_Tag.size());
				System.out.println("학력조건 배열크기 : " + education_Tag.size());
				System.out.println("근무조건 배열크기 : " + employmentType_Tag.size());
				System.out.println("근무위치 배열크기 : " + work_place_Tag.size());
				System.out.println("마감일 배열크기 : " + deadlines_Tag.size());
				System.out.println();
				
				int size = 50;
				if(companyName_Tag.size() < size) {size = companyName_Tag.size();}
				if(title_Tag.size() < size) {size = title_Tag.size();}
				if(href_Tag.size() < size) {size = href_Tag.size();}
				if(subclass_Tag.size() < size) {size = subclass_Tag.size();}
				if(career_Tag.size() < size) {size = career_Tag.size();}
				if(education_Tag.size() < size) {size = education_Tag.size();}
				if(employmentType_Tag.size() < size) {size = employmentType_Tag.size();}
				if(work_place_Tag.size() < size) {size = work_place_Tag.size();}
				if(deadlines_Tag.size() < size) {size = deadlines_Tag.size();}
				
				// deadlines_Tag배열 변수의 index만큼 반복
				for(int i = 0; i < size; i++) {
					
					row_count += 1;
					
					String companyName = null;
					String title = null;
					String href = null;
					String subclass = null;
					String career = null;
					String education = null;
					String employmentType = null;
					String work_place = null;
					String deadlines = null;
					
					//companyName_Tag의 i번째 인덱스의 텍스트만 companyName_Tag변수에 저장
					companyName = companyName_Tag.get(i).text();
					//title_Tag의 i번째 인덱스의 텍스트만 title변수에 저장
					title = title_Tag.get(i).text();	
					//href_Tag의 i번째 인덱스의 href속성값을 href변수에 저장
					href = href_Tag.get(i).attr("href");	
					href = "http://www.saramin.co.kr" + href;	
					//subclass_Tag의 i번째 인덱스의 텍스트만 subclass변수에 저장
					subclass = subclass_Tag.get(i).text();	
					//career_Tag의 i번째 인덱스의 텍스트만 career변수에 저장
					career = career_Tag.get(i).text();	
					//education_Tag의 i번째 인덱스의 텍스트만 education변수에 저장
					education = education_Tag.get(i).text();	
					//employmentType_Tag의 i번째 인덱스의 텍스트만 employmentType변수에 저장
					employmentType = employmentType_Tag.get(i).text();
					//work_place_Tag의 i번째 인덱스의 텍스트만 work_place변수에 저장
					work_place = work_place_Tag.get(i).text();	
					//deadlines_Tag의 i번째 인덱스의 텍스트만 deadlines변수에 저장
					deadlines = deadlines_Tag.get(i).text();	
					//deadlines = "asdf";
					
					
					// 행 출력
					System.out.println();					
					System.out.println("회사명 : " + companyName);
					System.out.println("제목 : " + title);
					System.out.println("href : " + href);
					System.out.println("대분류 : " + clasificar);
					System.out.println("소분류 : " + subclass);
					System.out.println("경력 조건 : " + career);
					System.out.println("학력 조건 : " + education);
					System.out.println("근무 조건 : " + employmentType);
					System.out.println("근무 위치 : " + work_place);
					System.out.println("마감일 : " + deadlines);
                    System.out.println();	  
					
                    // eDto 에 변수 저장
                    EmpInfoDTO eDto = new EmpInfoDTO(companyName, title, href, clasificar, subclass, career, education, employmentType, work_place, deadlines);
                    EmpInfoDAO eDao = EmpInfoDAO.getInstance();
                    // DAO에 Jaso_Insert클래스에 jDto를 매게변수로 보냄
					eDao.EmpInfo_Insert(eDto);
					
					// 몇번째 행인지 출력
					System.out.println("---------------------------------------------------------------------- " + row_count + " 행 저장 완료---------------------------------------------------------------------");
				}
				
				System.out.println();
				System.out.println("========================================[ " + clasificar + " ] " + page + "페이지 총 " + size + "건 저장========================================");
				System.out.println();	
				
				page++;
				url = front_url + page + last_url + clasificar_page;
			}
			page = 1;
			clasificar_page++;
			url = front_url + page + last_url + clasificar_page;
		}
		
		System.out.println("크롤링 완료");
	
	}	
}
