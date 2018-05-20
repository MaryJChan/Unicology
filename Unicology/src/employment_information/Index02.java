package employment_information;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import com.unicology.dao.empinfo.EmpInfoDAO;
import com.unicology.dto.empinfo.EmpInfoDTO;

public class Index02 {
      
	// 크롤링할 메인페이지 sub_url변수에 저장
	// http://www.saramin.co.kr/zf_user/jobs/list/job-category?page=2&cat_key=10105
	static String front_url = "http://www.saramin.co.kr/zf_user/jobs/list/job-category?page=";
	static String last_url = "&cat_key=";
	static int page = 1;
	static int clasificar_page = 10101;
	static String url = front_url + page + last_url + clasificar_page;
  
	public static void main(String[] args) throws IOException{
		// 페이지 카운팅 변수
		int row_count = 0;
		String clasificar = "경영·사무";
		
		// 소분류
		String subclass = "기획";
		
		while(clasificar_page <= 130907) {
			
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
				Elements middleClassification_Tag = root_url.select("#default_list_wrap .job_sector");
				
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
				System.out.println("중분류 배열크기 : " + middleClassification_Tag.size());
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
				if(middleClassification_Tag.size() < size) {size = middleClassification_Tag.size();}
				if(career_Tag.size() < size) {size = career_Tag.size();}
				if(education_Tag.size() < size) {size = education_Tag.size();}
				if(employmentType_Tag.size() < size) {size = employmentType_Tag.size();}
				if(work_place_Tag.size() < size) {size = work_place_Tag.size();}
				if(deadlines_Tag.size() < size) {size = deadlines_Tag.size();}
				
				if(size != 0) {
					// deadlines_Tag배열 변수의 index만큼 반복
					for(int i = 0; i < size; i++) {
						
						row_count += 1;
						
						String companyName = null;
						String title = null;
						String href = null;
						String middleClassification = null;
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
						href = "http://www.saramin.co.kr" + href_Tag.get(i).attr("href");	
						//subclass_Tag의 i번째 인덱스의 텍스트만 subclass변수에 저장
						middleClassification = middleClassification_Tag.get(i).text();	
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
						System.out.println("중분류 : " + middleClassification);
						System.out.println("소분류 : " + subclass);
						System.out.println("경력 조건 : " + career);
						System.out.println("학력 조건 : " + education);
						System.out.println("근무 조건 : " + employmentType);
						System.out.println("근무 위치 : " + work_place);
						System.out.println("마감일 : " + deadlines);
	                    System.out.println();	  
						
	                    // eDto 에 변수 저장
	                    EmpInfoDAO eDao = EmpInfoDAO.getInstance();
	                    
	                    // eDto 에 변수 저장
	                    EmpInfoDTO eDto = null;
	                    eDao = EmpInfoDAO.getInstance();
	                    
	                    eDto = eDao.titleCheck(title);
	                    
	                    if(eDto != null) {
	                    	System.out.println(eDto.getTitle());
	                    	System.out.println(eDto.getSubclass());
	                    	eDto = new EmpInfoDTO(eDto.getTitle(), eDto.getSubclass() + " & " + subclass);
	                    	eDao.EmpInfo_Update(eDto);
	                    } else if( eDto == null) {
	                    	 // DAO에 Jaso_Insert클래스에 jDto를 매게변수로 보냄
	                    	eDto = new EmpInfoDTO(companyName, title, href, clasificar, middleClassification, subclass, career, education, employmentType, work_place, deadlines);
							eDao.EmpInfo_Insert(eDto);
							
							// 몇번째 행인지 출력
							System.out.println("---------------------------------------------------------------------- " + row_count + " 행 저장 완료---------------------------------------------------------------------");
	                    }
					}
					
				} 
				System.out.println();
				System.out.println("========================================[ " + clasificar + " ] " + page + "페이지 총 " + size + "건 저장========================================");
				System.out.println();	
				
				page++;
				url = front_url + page + last_url + clasificar_page;
			}
			page = 1;
			clasificar_page++;
			if(clasificar_page == 10102) {
				subclass = "전략기획";
			} else if(clasificar_page == 10103) {
				subclass = "사업기획";
			} else if(clasificar_page == 10104) {
				subclass = "사업제휴";
			} else if(clasificar_page == 10105) {
				subclass = "타당성분석";
			} else if(clasificar_page == 10107) {
				subclass = "MBA출신";
			} else if(clasificar_page == 10108) {
				subclass = "경영기획";
			} else if(clasificar_page == 10111) {
				subclass = "조직관리";
			} else if(clasificar_page == 10112) {
				subclass = "변화관리";
			} else if(clasificar_page == 10113) {
				subclass = "서비스기획";
			} else if(clasificar_page == 10114) {
				subclass = "경영혁신·PI";
			} else if(clasificar_page == 10115) {
				subclass = "출판기획";
			} else if(clasificar_page == 10116) {
				subclass = "인수합병";
			} else if(clasificar_page == 10117) {
				subclass = "신규사업·BD";
			} else if(clasificar_page == 10118) {
				subclass = "CEO";
			} else if(clasificar_page == 10119) {
				subclass = "COO";
			} else if(clasificar_page == 10120) {
				subclass = "기획조사";
			} else if(clasificar_page == 10121) {
				subclass = "자산관리";
				clasificar_page = 10202;
			} else if(clasificar_page == 10203) {
				subclass = "특허업무";
			} else if(clasificar_page == 10204) {
				subclass = "법무";
			} else if(clasificar_page == 10207) {
				subclass = "총무";
			} else if(clasificar_page == 10210) {
				subclass = "사무";
			} else if(clasificar_page == 10213) {
				subclass = "인허가업무";
			} else if(clasificar_page == 10214) {
				subclass = "저작권관리";
			} else if(clasificar_page == 10217) {
				subclass = "문서관리";
			} else if(clasificar_page == 10218) {
				subclass = "비품관리";
			} else if(clasificar_page == 10219) {
				subclass = "송무";
			} else if(clasificar_page == 10220) {
				subclass = "의약사무";
			} else if(clasificar_page == 10221) {
				subclass = "항공사무";
			} else if(clasificar_page == 10222) {
				subclass = "공무";
			} else if(clasificar_page == 10223) {
				subclass = "문서수발";
			} else if (clasificar_page ==10224) {
				subclass = "경리";
				clasificar_page = 10302;
			} else if(clasificar_page == 10308) {
				subclass = "더존";
			} else if(clasificar_page == 10309) {
				subclass = "결산·정산";
			} else if(clasificar_page == 10310) {
				subclass = "급여관리";
			} else if(clasificar_page == 10316) {
				subclass = "4대보험";
			} else if(clasificar_page == 10318) {
				subclass = "기장·장부정리";
			} else if(clasificar_page == 10319) {
				subclass = "출납";
			} else if(clasificar_page == 10320) {
				subclass = "부가세신고";
			} else if(clasificar_page == 10322) {
				subclass = "전표입력";
			} else if(clasificar_page == 10323) {
				subclass = "판매관리";
			} else if (clasificar_page ==10324) {
				subclass = "홍보";
				clasificar_page = 10401;
			} else if(clasificar_page == 10402) {
				subclass = "언론홍보";
			} else if(clasificar_page == 10407) {
				subclass = "홍보기획";
			} else if(clasificar_page == 10409) {
				subclass = "사보·웹진";
			} else if(clasificar_page == 10411) {
				subclass = "PR";
			} else if(clasificar_page == 10412) {
				subclass = "기업홍보";
			} else if(clasificar_page == 10413) {
				subclass = "브랜드";
			} else if(clasificar_page == 10414) {
				subclass = "광고관리";
			} else if(clasificar_page == 10415) {
				subclass = "이벤트";
			} else if (clasificar_page ==10416) {
				subclass = "임원비서";
				clasificar_page = 10701;
			} else if(clasificar_page == 10702) {
				subclass = "비서";
			} else if(clasificar_page == 10704) {
				subclass = "안내";
			} else if(clasificar_page == 10705) {
				subclass = "수행비서";
			} else if(clasificar_page == 10708) {
				subclass = "전문비서";
			} else if(clasificar_page == 10709) {
				subclass = "비서자격증";
			} else if (clasificar_page ==10710) {
				subclass = "Excel·도표";
				clasificar_page = 10802;
			} else if(clasificar_page == 10803) {
				subclass = "PowerPoint";
			} else if(clasificar_page == 10804) {
				subclass = "OA";
			} else if(clasificar_page == 10805) {
				subclass = "전산입력·편집";
			} else if(clasificar_page == 10807) {
				subclass = "워드·문서작성";
			} else if(clasificar_page == 10809) {
				subclass = "정보처리기사";
			} else if(clasificar_page == 10812) {
				subclass = "사무보조";
			} else if(clasificar_page == 10814) {
				subclass = "홈페이지관리";
			} else if(clasificar_page == 10815) {
				subclass = "리서치·모니터링";
			} else if(clasificar_page == 10817) {
				subclass = "전화응대";
			} else if(clasificar_page == 10818) {
				subclass = "실험보조";
			} else if(clasificar_page == 10818) {
				subclass = "실험보조";
			} else if(clasificar_page == 10818) {
				subclass = "실험보조";
			} else if(clasificar_page == 10819) {
				subclass = "자료조사";
			} else if(clasificar_page == 10820) {
				subclass = "게시판관리";			
			} else if(clasificar_page == 10821) {
				subclass = "컨턴츠관리";			
			} else if(clasificar_page == 10822) {
				subclass = "인사";			
				clasificar_page = 11301;
			} else if(clasificar_page == 11303) {
				subclass = "교육·인재개발";			
			} else if(clasificar_page == 11305) {
				subclass = "임금협상·관리";			
			} else if(clasificar_page == 11310) {
				subclass = "MBO";			
			} else if(clasificar_page == 11311) {
				subclass = "성과관리";			
			} else if(clasificar_page == 11312) {
				subclass = "HRD·HRM";			
			} else if(clasificar_page == 11313) {
				subclass = "노무·노사관리";			
			} else if(clasificar_page == 11316) {
				subclass = "복리후생";			
			} else if(clasificar_page == 11317) {
				subclass = "인사기획";			
			} else if(clasificar_page == 11318) {
				subclass = "PHR·국제인사";			
			} else if(clasificar_page == 11319) {
				subclass = "채용·면접";			
			} else if(clasificar_page == 11320) {
				subclass = "인사평가";			
			} else if(clasificar_page == 11321) {
				subclass = "직무분석";			
			} else if(clasificar_page == 11322) {
				subclass = "보상·승진";			
			} else if(clasificar_page == 10822) {
				subclass = "재무";			
				clasificar_page = 11402;
			} else if(clasificar_page == 11403) {
				subclass = "새무";			
			} else if(clasificar_page == 11404) {
				subclass = "자금운용·조달";			
			} else if(clasificar_page == 11407) {
				subclass = "주식IR·공시";			
			} else if(clasificar_page == 11408) {
				subclass = "외환·nego";			
			} else if(clasificar_page == 11409) {
				subclass = "통계·데이터";			
			} else if(clasificar_page == 11414) {
				subclass = "CPA·AICPA";			
			} else if(clasificar_page == 11416) {
				subclass = "원가회계";			
			} else if(clasificar_page == 11417) {
				subclass = "경영지원";			
			} else if(clasificar_page == 11418) {
				subclass = "회계";			
			} else if(clasificar_page == 11419) {
				subclass = "내부감사·통제";			
			} else if(clasificar_page == 11420) {
				subclass = "전산회계";			
			} else if(clasificar_page == 11421) {
				subclass = "관리회계";			
			} else if(clasificar_page == 11423) {
				subclass = "ERP운용";			
			} else if(clasificar_page == 11424) {
				subclass = "예산관리";			
			} else if(clasificar_page == 11425) {
				subclass = "CFO";			
			} else if(clasificar_page == 11426) {
				subclass = "회계감사";			
			} else if(clasificar_page == 11427) {
				subclass = "SAP";			
			} else if(clasificar_page == 11428) {
				subclass = "CFA";			
			} else if(clasificar_page == 11429) {
				subclass = "재무회계";			
			} else if(clasificar_page == 11430) {
				subclass = "세무조사";			
			} else if(clasificar_page == 11431) {
				subclass = "마케팅전략·기획";			
				clasificar_page = 11902;
			} else if(clasificar_page == 11905) {
				subclass = "시장조사·분석";			
			} else if(clasificar_page == 11906) {
				subclass = "BM·브랜드매니저";			
			} else if(clasificar_page == 11907) {
				subclass = "프로모션";			
			} else if(clasificar_page == 11908) {
				subclass = "광고";	
			} else if(clasificar_page == 11909) {
				subclass = "라이센싱";	
			} else if(clasificar_page == 11910) {
				subclass = "CRM";	
			} else if(clasificar_page == 11911) {
				subclass = "스포츠마케팅";	
			} else if(clasificar_page == 11912) {
				subclass = "온라인마케팅";	
			} else if(clasificar_page == 11913) {
				subclass = "해외마케팅";	
			} else if(clasificar_page == 11914) {
				subclass = "입소문·바이럴";	
			} else if(clasificar_page == 11915) {
				subclass = "브랜드네이밍";	
			} else if(clasificar_page == 11916) {
				subclass = "설문·리서치";	
			} else if(clasificar_page == 11917) {
				subclass = "그래프·도표";	
			} else if(clasificar_page == 11918) {
				subclass = "미디어플래닝";	
			} else if(clasificar_page == 11919) {
				subclass = "매체분석 구매";	
			} else if(clasificar_page == 11920) {
				subclass = "CMO";	
			} else if(clasificar_page == 11921) {
				subclass = "광고기획";	
			} else if(clasificar_page == 11922) {
				subclass = "국제회의";	
			} else if(clasificar_page == 11923) {
				subclass = "업무제휴";	
			} else if(clasificar_page == 11924) {
				subclass = "전시";	
			} else if(clasificar_page == 11925) {
				subclass = "판촉";	
			} else if(clasificar_page == 11926) {
				subclass = "키워드광고";	
			} else if(clasificar_page == 11927) {
				subclass = "리셉션";			
				clasificar_page = 12001;
			} else if(clasificar_page == 12002) {
				subclass = "컨시어지";	
			} else if(clasificar_page == 12003) {
				subclass = "전시기획";	
			} else if(clasificar_page == 12004) {
				subclass = "회의 컨벤션";	
			} else if(clasificar_page == 12005) {
				subclass = "세미나·포럼";	
			} else if(clasificar_page == 12006) {
				subclass = "제약영업";			
				clasificar_page = 20202;
				clasificar = "영업·고객상담";
			} else if(clasificar_page == 20203) {
				subclass = "자동차영업";	
			} else if(clasificar_page == 20208) {
				subclass = "일반영업";	
			} else if(clasificar_page == 20212) {
				subclass = "화장품영업";	
			} else if(clasificar_page == 20214) {
				subclass = "납품영업";	
			} else if(clasificar_page == 20215) {
				subclass = "중고차딜러";	
			} else if(clasificar_page == 20216) {
				subclass = "주류영업";	
			} else if(clasificar_page == 20217) {
				subclass = "식품·음료영업";	
			} else if(clasificar_page == 20218) {
				subclass = "부동산영업";	
			} else if(clasificar_page == 20219) {
				subclass = "가맹점영업";	
			} else if(clasificar_page == 20220) {
				subclass = "핸드폰영업";	
			} else if(clasificar_page == 20221) {
				subclass = "상조·장례영업";	
			} else if(clasificar_page == 20222) {
				subclass = "법인영업";	
			} else if(clasificar_page == 20223) {
				subclass = "해외영업";	
			} else if(clasificar_page == 20224) {
				subclass = "고객관리";			
				clasificar_page = 20901;
			} else if(clasificar_page == 20902) {
				subclass = "영업관리";	
			} else if(clasificar_page == 20903) {
				subclass = "거래처관리";	
			} else if(clasificar_page == 20904) {
				subclass = "외주관리";	
			} else if(clasificar_page == 20905) {
				subclass = "납품관리";	
			} else if(clasificar_page == 20906) {
				subclass = "영업지원";	
			} else if(clasificar_page == 20907) {
				subclass = "채권관리";	
			} else if(clasificar_page == 20908) {
				subclass = "대리점·점포개발";	
			} else if(clasificar_page == 20909) {
				subclass = "거래선개발";	
			} else if(clasificar_page == 20910) {
				subclass = "영업기획";	
			} else if(clasificar_page == 20911) {
				subclass = "매출분석·관리";	
			} else if(clasificar_page == 20912) {
				subclass = "가맹점관리";	
			} else if(clasificar_page == 20224) {
				subclass = "기술영업(제조)";			
				clasificar_page = 20801;
			} else if(clasificar_page == 20802) {
				subclass = "기술영업(건설)";	
			} else if(clasificar_page == 20803) {
				subclass = "기술영업(유통)";	
			} else if(clasificar_page == 20804) {
				subclass = "장비영업";	
			} else if(clasificar_page == 20805) {
				subclass = "기술영업(일반)";	
			} else if(clasificar_page == 20806) {
				subclass = "의료기기영업";	
			} else if(clasificar_page == 20807) {
				subclass = "기술지원";	
			} else if(clasificar_page == 20808) {
				subclass = "홈페이지제작영업";			
				clasificar_page = 20501;
			} else if(clasificar_page == 20503) {
				subclass = "시스템영업";	
			} else if(clasificar_page == 20504) {
				subclass = "솔루션영업";	
			} else if(clasificar_page == 20505) {
				subclass = "네트워크영업";	
			} else if(clasificar_page == 20506) {
				subclass = "HW·SW 영업";	
			} else if(clasificar_page == 20508) {
				subclass = "SI영업";	
			} else if(clasificar_page == 20509) {
				subclass = "어플리케이션영업";	
			} else if(clasificar_page == 20510) {
				subclass = "보안시스템영업";	
			} else if(clasificar_page == 20511) {
				subclass = "기술영업(IT)";	
			} else if(clasificar_page == 20512) {
				subclass = "광고영업";			
				clasificar_page = 20701;
			} else if(clasificar_page == 20702) {
				subclass = "매체광고";	
			} else if(clasificar_page == 20703) {
				subclass = "온라인광고";	
			} else if(clasificar_page == 20704) {
				subclass = "옥외광고";	
			} else if(clasificar_page == 20705) {
				subclass = "키워드광고";	
			} else if(clasificar_page == 20706) {
				subclass = "지역광고";	
			} else if(clasificar_page == 20707) {
				subclass = "지하철광고";	
			} else if(clasificar_page == 20708) {
				subclass = "버스광고";	
			} else if(clasificar_page == 20710) {
				subclass = "DM·타겟메일";	
			} else if(clasificar_page == 20711) {
				subclass = "금융영업";			
				clasificar_page = 20601;
			} else if(clasificar_page == 20604) {
				subclass = "투자상담";	
			} else if(clasificar_page == 20605) {
				subclass = "금융자산관리사";	
			} else if(clasificar_page == 20607) {
				subclass = "법인고객영업";	
			} else if(clasificar_page == 20608) {
				subclass = "개인고객영업";	
			} else if(clasificar_page == 20609) {
				subclass = "방카슈랑스";	
			} else if(clasificar_page == 20610) {
				subclass = "여신상담";	
			} else if(clasificar_page == 20612) {
				subclass = "재무설계";	
			} else if(clasificar_page == 20613) {
				subclass = "PB";	
			} else if(clasificar_page == 20615) {
				subclass = "카드영업";	
			} else if(clasificar_page == 20617) {
				subclass = "대출영업";	
			} else if(clasificar_page == 20618) {
				subclass = "보험영업";	
			} else if(clasificar_page == 20619) {
				subclass = "금융사무";	
			} else if(clasificar_page == 20620) {
				subclass = "담보";	
			} else if(clasificar_page == 20621) {
				subclass = "금융상담";	
			} else if(clasificar_page == 20622) {
				subclass = "재무상담";	
			} else if(clasificar_page == 20623) {
				subclass = "텔러";	
			} else if(clasificar_page == 20624) {
				subclass = "매장관리";			
				clasificar_page = 20302;
			} else if(clasificar_page == 20303) {
				subclass = "매장판매";	
			} else if(clasificar_page == 20305) {
				subclass = "지점관리";	
			} else if(clasificar_page == 20306) {
				subclass = "판매관리";	
			} else if(clasificar_page == 20308) {
				subclass = "의류·구두·신발";	
			} else if(clasificar_page == 20309) {
				subclass = "화장품·뷰티";	
			} else if(clasificar_page == 20310) {
				subclass = "도서·서적·서점";	
			} else if(clasificar_page == 20311) {
				subclass = "가전판매";	
			} else if(clasificar_page == 20312) {
				subclass = "잡화·가방·지갑";	
			} else if(clasificar_page == 20313) {
				subclass = "외식·식품";	
			} else if(clasificar_page == 20314) {
				subclass = "컴퓨터판매";	
			} else if(clasificar_page == 20315) {
				subclass = "휴대폰·MP3";	
			} else if(clasificar_page == 20316) {
				subclass = "사무용품";	
			} else if(clasificar_page == 20319) {
				subclass = "홍보판촉";	
			} else if(clasificar_page == 20320) {
				subclass = "안내·프런트";	
			} else if(clasificar_page == 20321) {
				subclass = "샵마스터";	
			} else if(clasificar_page == 20323) {
				subclass = "캐셔·텔러";	
			} else if(clasificar_page == 20324) {
				subclass = "예약·발권";	
			} else if(clasificar_page == 20327) {
				subclass = "꽃·플로리스트";	
			} else if(clasificar_page == 20328) {
				subclass = "스포츠·레저용품";	
			} else if(clasificar_page == 20329) {
				subclass = "가구·침대·소품";	
			} else if(clasificar_page == 20330) {
				subclass = "매출관리";	
			} else if(clasificar_page == 20331) {
				subclass = "진열관리";	
			} else if(clasificar_page == 20332) {
				subclass = "재고관리";	
			} else if(clasificar_page == 20333) {
				subclass = "애견용품";	
			} else if(clasificar_page == 20334) {
				subclass = "전역장교";	
			} else if(clasificar_page == 20335) {
				subclass = "주얼리·귀금속";	
			} else if(clasificar_page == 20336) {
				subclass = "방문판매";	
			} else if(clasificar_page == 20337) {
				subclass = "아웃바운드";			
				clasificar_page = 21001;
			} else if(clasificar_page == 21002) {
				subclass = "TM";	
			} else if(clasificar_page == 21004) {
				subclass = "인터넷·통신";	
			} else if(clasificar_page == 21005) {
				subclass = "홈쇼핑·쇼핑몰";	
			} else if(clasificar_page == 21007) {
				subclass = "학습지·출판";	
			} else if(clasificar_page == 21010) {
				subclass = "학원·유학원";	
			} else if(clasificar_page == 21011) {
				subclass = "항공·여행·호텔";	
			} else if(clasificar_page == 21012) {
				subclass = "콜센터판매";	
			} else if(clasificar_page == 21013) {
				subclass = "채권추심";	
			} else if(clasificar_page == 21015) {
				subclass = "해피콜";	
			} else if(clasificar_page == 21016) {
				subclass = "키워드광고";	
			} else if(clasificar_page == 21017) {
				subclass = "증권·보험·카드";	
			} else if(clasificar_page == 21018) {
				subclass = "택배·운송·물류";	
			} else if(clasificar_page == 21019) {
				subclass = "백화점·마트";	
			} else if(clasificar_page == 21020) {
				subclass = "신문·방송";	
			} else if(clasificar_page == 21021) {
				subclass = "부동산";	
			} else if(clasificar_page == 21022) {
				subclass = "웨딩·장례";	
			} else if(clasificar_page == 21023) {
				subclass = "인바운드";			
				clasificar_page = 21101;
			} else if(clasificar_page == 21103) {
				subclass = "인터넷·통신";	
			} else if(clasificar_page == 21105) {
				subclass = "증권·보험·카드";	
			} else if(clasificar_page == 21110) {
				subclass = "콜센터상담";	
			} else if(clasificar_page == 21114) {
				subclass = "백화점·마트";	
			} else if(clasificar_page == 21116) {
				subclass = "택배·운송·물류";	
			} else if(clasificar_page == 21117) {
				subclass = "학습지·출판";	
			} else if(clasificar_page == 21118) {
				subclass = "신문·방송";	
			} else if(clasificar_page == 21120) {
				subclass = "항공·여행·호텔";	
			} else if(clasificar_page == 21122) {
				subclass = "부동산";	
			} else if(clasificar_page == 21123) {
				subclass = "웨딩·장례";	
			} else if(clasificar_page == 21124) {
				subclass = "판매·세일즈";	
			} else if(clasificar_page == 21125) {
				subclass = "전화주문";	
			} else if(clasificar_page == 21126) {
				subclass = "홈쇼핑·쇼핑몰";	
			} else if(clasificar_page == 21127) {
				subclass = "학원·유학원";	
			} else if(clasificar_page == 21129) {
				subclass = "광고";	
			} else if(clasificar_page == 21130) {
				subclass = "CS";			
				clasificar_page = 21201;
			} else if(clasificar_page == 21202) {
				subclass = "고객상담";	
			} else if(clasificar_page == 21203) {
				subclass = "고객지원";	
			} else if(clasificar_page == 21204) {
				subclass = "고객응대";	
			} else if(clasificar_page == 21205) {
				subclass = "회원관리";	
			} else if(clasificar_page == 21209) {
				subclass = "여론조사·리서치";	
			} else if(clasificar_page == 21210) {
				subclass = "전화교환";	
			} else if(clasificar_page == 21212) {
				subclass = "통합센터(멀티센터)";	
			} else if(clasificar_page == 21213) {
				subclass = "고객불만처리";	
			} else if(clasificar_page == 21214) {
				subclass = "메일·게시글 관리";	
			} else if(clasificar_page == 21215) {
				subclass = "메신저·문자 상담";	
			} else if(clasificar_page == 21216) {
				subclass = "콜센터관리";			
				clasificar_page = 21301;
			} else if(clasificar_page == 21302) {
				subclass = "SV(슈퍼바이저)";	
			} else if(clasificar_page == 21303) {
				subclass = "QAA·통화품질";	
			} else if(clasificar_page == 21304) {
				subclass = "CS강사·교육";	
			} else if(clasificar_page == 21305) {
				subclass = "콜센터매니저";	
			} else if(clasificar_page == 21306) {
				subclass = "파트장·운영보조";	
			} else if(clasificar_page == 21307) {
				subclass = "콜통계·분석";	
			} else if(clasificar_page == 21308) {
				subclass = "VOC관리·분석";	
			} else if(clasificar_page == 21309) {
				subclass = "ASP";			
				clasificar_page = 40402;
				clasificar = "IT·인터넷";
			} else if(clasificar_page == 40404) {
				subclass = "Java·JSP";	
			} else if(clasificar_page == 40407) {
				subclass = "PHP";	
			} else if(clasificar_page == 40409) {
				subclass = "XML";	
			} else if(clasificar_page == 40413) {
				subclass = "HTML";	
			} else if(clasificar_page == 40416) {
				subclass = ".NET";	
			} else if(clasificar_page == 40420) {
				subclass = "APM";	
			} else if(clasificar_page == 40421) {
				subclass = "Ajax";	
			} else if(clasificar_page == 40424) {
				subclass = "PERL";	
			} else if(clasificar_page == 40425) {
				subclass = "Ruby";	
			} else if(clasificar_page == 40426) {
				subclass = "Python";	
			} else if(clasificar_page == 40427) {
				subclass = "프론트엔드";	
			} else if(clasificar_page == 40430) {
				subclass = "백엔드";	
			} else if(clasificar_page == 40431) {
				subclass = "IOS앱개발";			
				clasificar_page = 40701;
			} else if(clasificar_page == 40702) {
				subclass = "Android앱개발";	
			} else if(clasificar_page == 40702) {
				subclass = "Android앱개발";	
			} else if(clasificar_page == 40706) {
				subclass = "Windows";	
			} else if(clasificar_page == 40707) {
				subclass = "Unix";	
			} else if(clasificar_page == 40708) {
				subclass = "Linux";	
			} else if(clasificar_page == 40709) {
				subclass = "VisualC·C++";	
			} else if(clasificar_page == 40711) {
				subclass = "VisualBasic";	
			} else if(clasificar_page == 40712) {
				subclass = "C·C++";	
			} else if(clasificar_page == 40714) {
				subclass = "MFC";	
			} else if(clasificar_page == 40715) {
				subclass = "PowerBuilder";	
			} else if(clasificar_page == 40716) {
				subclass = "Java";	
			} else if(clasificar_page == 40717) {
				subclass = "Delphi";	
			} else if(clasificar_page == 40719) {
				subclass = "OpenGL";	
			} else if(clasificar_page == 40720) {
				subclass = "Oracle";	
			} else if(clasificar_page == 40721) {
				subclass = "Python";	
			} else if(clasificar_page == 40722) {
				subclass = ".NET";	
			} else if(clasificar_page == 40725) {
				subclass = "Pro-C";	
			} else if(clasificar_page == 40728) {
				subclass = "C#";	
			} else if(clasificar_page == 40729) {
				subclass = "액션스크립트";	
			} else if(clasificar_page == 40732) {
				subclass = "SAP·ABAP";	
			} else if(clasificar_page == 40734) {
				subclass = "Embedded";	
			} else if(clasificar_page == 40738) {
				subclass = "API";	
			} else if(clasificar_page == 40745) {
				subclass = "MySQL";	
			} else if(clasificar_page == 40746) {
				subclass = "MS-SQL";	
			} else if(clasificar_page == 40747) {
				subclass = "FLEX";	
			} else if(clasificar_page == 40751) {
				subclass = "증강현실(AR)";	
			} else if(clasificar_page == 40753) {
				subclass = "가상현실(VR)";	
			} else if(clasificar_page == 40755) {
				subclass = "C++Builder";	
			} else if(clasificar_page == 40759) {
				subclass = "RFID";	
			} else if(clasificar_page == 40760) {
				subclass = "Win32";	
			} else if(clasificar_page == 40761) {
				subclass = "Labview";	
			} else if(clasificar_page == 40762) {
				subclass = "micom";	
			} else if(clasificar_page == 40763) {
				subclass = "objective c";	
			} else if(clasificar_page == 40764) {
				subclass = "어셈블리";			
				clasificar_page = 40802;
			} else if(clasificar_page == 40805) {
				subclass = "Embedded";	
			} else if(clasificar_page == 40806) {
				subclass = "펌웨어";	
			} else if(clasificar_page == 40808) {
				subclass = "HMI·PLC";	
			} else if(clasificar_page == 40812) {
				subclass = "CTI";	
			} else if(clasificar_page == 40813) {
				subclass = "서버관리";			
				clasificar_page = 40201;
			} else if(clasificar_page == 40203) {
				subclass = "네트워크관리";	
			} else if(clasificar_page == 40204) {
				subclass = "방화벽";	
			} else if(clasificar_page == 40207) {
				subclass = "서버구축";	
			} else if(clasificar_page == 40208) {
				subclass = "가상화구축";	
			} else if(clasificar_page == 40209) {
				subclass = "시스템·네트워크 컨설팅";	
			} else if(clasificar_page == 40210) {
				subclass = "보안컨설팅";	
			} else if(clasificar_page == 40214) {
				subclass = "Apache";	
			} else if(clasificar_page == 40215) {
				subclass = "IIS";	
			} else if(clasificar_page == 40216) {
				subclass = "RTOS";	
			} else if(clasificar_page == 40217) {
				subclass = "NGINX";	
			} else if(clasificar_page == 40218) {
				subclass = "POS";	
			} else if(clasificar_page == 40219) {
				subclass = "DWH·ATM";	
			} else if(clasificar_page == 40220) {
				subclass = "AWS";	
			} else if(clasificar_page == 40223) {
				subclass = "Cisco";	
			} else if(clasificar_page == 40226) {
				subclass = "정보보안";	
			} else if(clasificar_page == 40227) {
				subclass = "Router·Switch";	
			} else if(clasificar_page == 40228) {
				subclass = "ISP·IDC운영";	
			} else if(clasificar_page == 40229) {
				subclass = "TCP·IP·IPX";	
			} else if(clasificar_page == 40231) {
				subclass = "바이러스·백신";	
			} else if(clasificar_page == 40232) {
				subclass = "보안관제";	
			} else if(clasificar_page == 40233) {
				subclass = "보안기술";	
			} else if(clasificar_page == 40234) {
				subclass = "시스템운영";	
			} else if(clasificar_page == 40237) {
				subclass = "Windows";	
			} else if(clasificar_page == 40238) {
				subclass = "Unix";	
			} else if(clasificar_page == 40239) {
				subclass = "Linux";	
			} else if(clasificar_page == 40240) {
				subclass = "모델링";			
				clasificar_page = 40904;
			} else if(clasificar_page == 40905) {
				subclass = "ERP컨설턴트";	
			} else if(clasificar_page == 40912) {
				subclass = "SAP·ABAP ";	
			} else if(clasificar_page == 40913) {
				subclass = "MES";	
			} else if(clasificar_page == 40914) {
				subclass = "PLM";	
			} else if(clasificar_page == 40915) {
				subclass = "SEM·SCM";	
			} else if(clasificar_page == 40916) {
				subclass = "시스템엔지니어(SE)";	
			} else if(clasificar_page == 40917) {
				subclass = "Oracle";			
				clasificar_page = 41602;
			} else if(clasificar_page == 41603) {
				subclass = "MS-SQL";	
			} else if(clasificar_page == 41604) {
				subclass = "MySQL";	
			} else if(clasificar_page == 41605) {
				subclass = "ETL";	
			} else if(clasificar_page == 41606) {
				subclass = "OLAP";	
			} else if(clasificar_page == 41607) {
				subclass = "데이타마이닝";	
			} else if(clasificar_page == 41608) {
				subclass = "DW";	
			} else if(clasificar_page == 41610) {
				subclass = "PostgreSQL";	
			} else if(clasificar_page == 41611) {
				subclass = "NoSQL";	
			} else if(clasificar_page == 41618) {
				subclass = "튜닝";	
			} else if(clasificar_page == 41619) {
				subclass = "DBA";	
			} else if(clasificar_page == 41620) {
				subclass = "DB2";	
			} else if(clasificar_page == 41621) {
				subclass = "HTML코딩";			
				clasificar_page = 41301;
			} else if(clasificar_page == 41302) {
				subclass = "단순웹작업";	
			} else if(clasificar_page == 41303) {
				subclass = "퍼블리셔";	
			} else if(clasificar_page == 41304) {
				subclass = "웹표준·웹접근성";	
			} else if(clasificar_page == 41305) {
				subclass = "자바스크립트";	
			} else if(clasificar_page == 41308) {
				subclass = "액션스크립트";	
			} else if(clasificar_page == 41309) {
				subclass = "포토샵코딩";			
				clasificar_page = 41203;
			} else if(clasificar_page == 41204) {
				subclass = "플래쉬";	
			} else if(clasificar_page == 41205) {
				subclass = "Sketch";	
			} else if(clasificar_page == 41206) {
				subclass = "드림위버";	
			} else if(clasificar_page == 41209) {
				subclass = "자바스크립트";	
			} else if(clasificar_page == 41212) {
				subclass = "XML";	
			} else if(clasificar_page == 41213) {
				subclass = "UI·UX디자인";	
			} else if(clasificar_page == 41214) {
				subclass = "일러스트레이터";	
			} else if(clasificar_page == 41216) {
				subclass = "프로토타이핑";	
			} else if(clasificar_page == 41217) {
				subclass = "GUI";	
			} else if(clasificar_page == 41222) {
				subclass = "CSS";	
			} else if(clasificar_page == 41224) {
				subclass = "웹UI";	
			} else if(clasificar_page == 41225) {
				subclass = "모바일UI";	
			} else if(clasificar_page == 41228) {
				subclass = "HTML ";	
			} else if(clasificar_page == 41229) {
				subclass = "FLEX";	
			} else if(clasificar_page == 41230) {
				subclass = "HW(하드웨어)";			
				clasificar_page = 41102;
			} else if(clasificar_page == 41105) {
				subclass = "SW(소프트웨어)";	
			} else if(clasificar_page == 41109) {
				subclass = "유지보수(AS)";	
			} else if(clasificar_page == 41113) {
				subclass = "DSP";	
			} else if(clasificar_page == 41115) {
				subclass = "FPGA";	
			} else if(clasificar_page == 41116) {				
				subclass = "위성·GPS·GIS";	
				clasificar_page = 41005;
			} else if(clasificar_page == 41006) {
				subclass = "광통신";	
			} else if(clasificar_page == 41007) {
				subclass = "이동통신";	
			} else if(clasificar_page == 41017) {
				subclass = "통신망가설";	
			} else if(clasificar_page == 41033) {
				subclass = "정보통신";	
			} else if(clasificar_page == 41034) {
				subclass = "무선통신";	
			} else if(clasificar_page == 41036) {
				subclass = "사물인터넷(IoT)";	
			} else if(clasificar_page == 41037) {
				subclass = "PM";	
				clasificar_page = 40305;
			} else if(clasificar_page == 40308) {
				subclass = "정보설계·IA";	
			} else if(clasificar_page == 40309) {
				subclass = "스토리보드";	
			} else if(clasificar_page == 40310) {
				subclass = "컨텐츠기획";	
			} else if(clasificar_page == 40315) {
				subclass = "로그분석";	
			} else if(clasificar_page == 40318) {
				subclass = "UI기획";	
			} else if(clasificar_page == 40319) {
				subclass = "제안·컨설팅";	
			} else if(clasificar_page == 40320) {
				subclass = "쇼핑몰기획";	
			} else if(clasificar_page == 40321) {
				subclass = "모바일기획";	
			} else if(clasificar_page == 40324) {
				subclass = "웹서비스기획";	
			} else if(clasificar_page == 40325) {
				subclass = "웹마스터";	
				clasificar_page = 40101;
			} else if(clasificar_page == 40104) {
				subclass = "Unix";	
			} else if(clasificar_page == 40105) {
				subclass = "Linux";	
			} else if(clasificar_page == 40106) {
				subclass = "Windows";	
			} else if(clasificar_page == 40110) {
				subclass = "QA·테스터";	
			} else if(clasificar_page == 40111) {
				subclass = "사이트운영";	
				clasificar_page = 40601;
			} else if(clasificar_page == 40603) {
				subclass = "컨텐츠운영";	
			} else if(clasificar_page == 40606) {
				subclass = "e-러닝운영";	
			} else if(clasificar_page == 40609) {
				subclass = "카페·블로그관리";	
			} else if(clasificar_page == 40610) {
				subclass = "게시판관리";	
			} else if(clasificar_page == 40612) {
				subclass = "쇼핑몰·오픈마켓";	
			} else if(clasificar_page == 40614) {
				subclass = "컨텐츠제작";	
			} else if(clasificar_page == 40615) {
				subclass = "게임기획";	
				clasificar_page = 40501;
			} else if(clasificar_page == 40502) {
				subclass = "게임시나리오";	
			} else if(clasificar_page == 40503) {
				subclass = "GM·게임운영";	
			} else if(clasificar_page == 40508) {
				subclass = "QA·베타테스터";	
			} else if(clasificar_page == 40510) {
				subclass = "게임마케팅";	
			} else if(clasificar_page == 40511) {
				subclass = "온라인게임";	
			} else if(clasificar_page == 40513) {
				subclass = "게임디자인";	
			} else if(clasificar_page == 40515) {
				subclass = "2D·도트·맵";	
			} else if(clasificar_page == 40516) {
				subclass = "3D·모델링·모션";	
			} else if(clasificar_page == 40526) {
				subclass = "캐릭터·아이템";	
			} else if(clasificar_page == 40527) {
				subclass = "모바일게임";	
			} else if(clasificar_page == 40530) {
				subclass = "게임개발";	
			} else if(clasificar_page == 40533) {
				subclass = "캐주얼·보드게임";	
			} else if(clasificar_page == 40535) {
				subclass = "CS·고객지원";	
			} else if(clasificar_page == 40536) {
				subclass = "클라이언트개발";	
			} else if(clasificar_page == 40537) {
				subclass = "서버·네트웍개발";	
			} else if(clasificar_page == 40540) {
				subclass = "원화·일러스트";	
			} else if(clasificar_page == 40541) {
				subclass = "MMORPG";	
			} else if(clasificar_page == 40542) {
				subclass = "DirectX";	
			} else if(clasificar_page == 40543) {
				subclass = "OA·컴퓨터";	
				clasificar_page = 41501;
			} else if(clasificar_page == 41502) {
				subclass = "인터넷·네트워크";	
			} else if(clasificar_page == 41503) {
				subclass = "웹디자인강의";	
			} else if(clasificar_page == 41504) {
				subclass = "프로그래밍";	
			} else if(clasificar_page == 41505) {
				subclass = "시스템·DB·보안";	
			} else if(clasificar_page == 41506) {
				subclass = "3D·영상·플래시";	
			} else if(clasificar_page == 41508) {
				subclass = "IT강의";	
			} else if(clasificar_page == 41509) {
				subclass = "프리미어";	
				clasificar_page = 41402;
			} else if(clasificar_page == 41404) {
				subclass = "파이널컷";	
			} else if(clasificar_page == 41405) {
				subclass = "영상편집";	
			} else if(clasificar_page == 41406) {
				subclass = "3DMAX";	
			} else if(clasificar_page == 41407) {
				subclass = "멀티미디어";	
			} else if(clasificar_page == 41410) {
				subclass = "코덱·인코딩";	
			} else if(clasificar_page == 41411) {
				subclass = "인공지능(AI)";	
				clasificar_page = 41701;
			} else if(clasificar_page == 41702) {
				subclass = "빅데이터";	
			} else if(clasificar_page == 41703) {
				subclass = "머신러닝";	
			} else if(clasificar_page == 41704) {
				subclass = "클라우드";	
			} else if(clasificar_page == 41705) {
				subclass = "사물인터넷(IoT)";	
			} else if(clasificar_page == 41706) {
				subclass = "DataAnalysis";	
			} else if(clasificar_page == 41707) {
				subclass = "Hadoop";	
			} else if(clasificar_page == 41708) {
				subclass = "Spark";	
			} else if(clasificar_page == 41709) {
				subclass = "자연어처리(NLP)";	
			} else if(clasificar_page == 41710) {
				subclass = "R";	
			} else if(clasificar_page == 41711) {
				subclass = "Python";	
			} else if(clasificar_page == 41712) {
				subclass = "TensorFlow";	
			} else if(clasificar_page == 41713) {
				subclass = "그래픽디자인";	
				clasificar_page = 120101;
				clasificar = "디자인";
			} 
			
			url = front_url + page + last_url + clasificar_page;
			System.out.println(url);
		}
		
		System.out.println("크롤링 완료");
	
	}	
}