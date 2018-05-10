package jasosu;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.unicology.dao.jasosu.JasosuDAO;
import com.unicology.dto.jasosu.JasosuDTO;
public class Index {
      
	// 크롤링할 메인페이지 front_url변수에 저장
	static String front_url = "http://www.jobkorea.co.kr/starter/PassAssay?FavorCo_Stat=0&Pass_An_Stat=0&OrderBy=0&EduType=0&WorkType=0&schPart=";
	static int schPartNum = 10012;
	static String last_url = "&isSaved=1&Page=";
	static int page = 1;
	static String url = front_url + schPartNum + last_url + page;       
  
	public static void main(String[] args) throws IOException{
		// 페이지 카운팅 변수
		int count = 0;
		// field 변수 index
		int fi = 0;
		// field 카운팅 변수
		int field_count = 0;
		// title 카운팅 변수
		int title_count = 0;
		//contents 카운팅 변수
		int contents_count = 0;
		
		// 
		String schPart = null;
		
		JasosuDAO jDao = JasosuDAO.getInstance();
		// field 배치 저장위해 ArrayList객체 생성
		ArrayList<String> field = new ArrayList<>();
        
		while(schPartNum <= 10026) {
			if(schPartNum == 10012) {
				schPart = "경영·사무";
			} else if (schPartNum == 10013) {
				schPart = "마케팅·광고·홍보";
			} else if (schPartNum == 10014) {
				schPart = "IT·인터넷";
			} else if (schPartNum == 10015) {
				schPart = "디자인";
			} else if (schPartNum == 10016) {
				schPart = "무역·유통";
			} else if (schPartNum == 10017) {
				schPart = "영업·고객상담";
			} else if (schPartNum == 10018) {
				schPart = "서비스";
			} else if (schPartNum == 10019) {
				schPart = "연구개발·설계";
			} else if (schPartNum == 10020) {
				schPart = "생산·제조";
			} else if (schPartNum == 10021) {
				schPart = "교육";
			} else if (schPartNum == 10022) {
				schPart = "건설";
			} else if (schPartNum == 10023) {
				schPart = "의료";
			} else if (schPartNum == 10024) {
				schPart = "미디어";
			} else if (schPartNum == 10025) {
				schPart = "전문·특수직";
			}
			
			while(page <= 237) {
				// 페이지 카운팅을 위해 1증가
				count += 1;
				
				// 메인페이지 url을 Jsoup라이브러리 Document타입 root_url변수로 저장
				Document root_url = Jsoup.connect(url).get();
               
				// root_url변수에서 .linkArray > .field 태그만 선택해 Elements배열타입 field_Tag변수에 저장 [분야 크롤링]
				Elements field_Tag = root_url.select(".linkArray > .field");
				
				// root_url변수에서 p.tit > a 태그만 선택해 Elements배열타입 contents_Tag변수에 저장 [태그에 href 속성값을 가져오기위해]
				Elements contents_Tag = root_url.select("p.tit > a");

				if(contents_Tag.size() != 0) {
					// 크롤링 시작페이지 출력
					System.out.println();
					System.out.println("========================================[" + schPart + "]" + page + "페이지========================================");
					System.out.println();
	                
					// field_Tag배열 변수의 index만큼 반복
					for(int i = 0; i < field_Tag.size(); i++) {
	                    
						// 분야는 배치로 ArrayList에 저장
						
						// shareField 배열 변수의 0번째 index는 경력, 1번째 index는 분야, 분야만 추출하기 위해 조건문 사용  
						if( i%2 == 1 ) {						
							// field 카운팅을 위해 field_count 1증가
							field_count += 1;
							
							// field_Tag변수의 분야만 추출하여 Element타입 shareField 변수에 저장								
							Element shareField = field_Tag.get(i);						
							
							// field 변수에 shareField에 담긴 텍스트만 저장
							field.add(shareField.text());	
						}					
					}
					// 한페이지의 분야값 field 배열변수에  모두 저장
					
					for(Element element:contents_Tag) {					
						//element(contents_Tag)에 href속성값을 main_front_url에 저장
						String main_front_url = element.attr("href");
	                     
						// main_front_url 변수값에 "/starter/PassAssay/View/"이 포함될경우 아래 조건문 이동
						if(main_front_url.contains("/starter/PassAssay/View/")) {
							// "http://www.jobkorea.co.kr" + main_front_url을 Jsoup라이브러리 Document타입 doc변수로 저장
							Document doc = Jsoup.connect("http://www.jobkorea.co.kr" + main_front_url).get();
							System.out.println("현재 접속할 url주소 : " + "http://www.jobkorea.co.kr" + main_front_url);
	                            
							// doc변수에서 button > span.tx태그만 선택해 Elements배열타입 title_Tag변수에 저장 [제목 크롤링]
							Elements title_Tag = doc.select("button > span.tx");
							// doc변수에서 dd > .tx태그만 선택해 Elements배열타입 body_Tag변수에 저장 [내용 크롤링]
							Elements body_Tag = doc.select("dd > .tx");                        
							
							// title_Tag배열 변수의 index 만큼 반복
							for(int i = 0; i < title_Tag.size(); i++) {
								// 반복문 시작시 title, contents변수 초기화
								String title=null;
								String contents = null;	
								
								// title과 contents 카운팅을 위해 1씩증가
								title_count += 1;
								contents_count += 1;
								
								//title_Tag의 j번째 인덱스의 텍스트만 title변수에 저장
								title = title_Tag.get(i).text();
								//body_Tag의 j번째 인덱스의 텍스트만 contents변수에 저장
								contents = body_Tag.get(i).text();
								
								// title_count행 출력
								System.out.println();
								System.out.println("분류 : " + schPart);
								System.out.println("분야 : " + field.get(fi));
								System.out.println("제목 : " + title);
								System.out.println("내용 : " + contents);
		                        System.out.println();	                        
								
		                        // jDto 에 변수 저장 [ field.get(fi) : 배열변수의 인덱스를 지정시 String 타입으로 변경 ]
		                        JasosuDTO jDto = new JasosuDTO(schPart, field.get(fi), title, contents);
		                        
		                        // DAO에 Jaso_Insert클래스에 jDto를 매게변수로 보냄
								jDao.Jaso_Insert(jDto);
								
								// 몇번째 행인지 출력
								System.out.println("---------------------------------------------------------------------- " + title_count + " 행 저장 완료---------------------------------------------------------------------");
								
							}
						}
						// field 다음 인덱스를 가져오기위해 fi변수 1증가
						fi += 1;
					}
					// 저장 완료된 페이지 출력
					System.out.println();
					System.out.println("=================================== [" + schPart + "]" +page + "페이지 저장 완료 ===================================");
					System.out.println();
					
					// 다음 메인 페이지를 가져오기위해 page값 1증가
					page ++;                    
					url = front_url + schPartNum + last_url + page;      
				} else {
					schPartNum +=1;
					url = front_url + schPartNum + last_url + page;      
					break;
				}
			}
		}
		
		
		
		// 각 컬럼별 총 저장개수 출력
		System.out.println("--------------------------------------------------------- 총 저장된 분야 변수 인덱스 : " + field_count + " --------------------------------------------------------");
		System.out.println("--------------------------------------------------------- 총 저장된 제목 변수 인덱스 : " + title_count + " --------------------------------------------------------");
		System.out.println("--------------------------------------------------------- 총 저장된 내용 변수 인덱스 : " + contents_count + " --------------------------------------------------------");
		System.out.println("----------------------------------------------------------- 총" + count + "페이지를 저장했습니다. -----------------------------------------------------------");
		System.out.println();         
         
	}
}
