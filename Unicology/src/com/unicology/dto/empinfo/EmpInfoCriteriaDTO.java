package com.unicology.dto.empinfo;
//검색 기준 또는 분류 기준
public class EmpInfoCriteriaDTO {
      private int page;       //페이지번호(하단의 번호들 클릭)
      private int perPageNum; //한 페이지에 보여줄 게시글 수
      private String keyword; // 검색 값   (채용공고 Tab검색 키워드 ex: 정규직, 계약직,.. 등등)
      private String flag;    // 검색 조건
      private String[] category_keyword; //카테코리 키워드
      private String[] category_check_keyword; //카테코리 체크박스 키워드
      
      public EmpInfoCriteriaDTO(int page, int perPageNum, String keyword, String flag) {
            super();
            this.page = page;
            this.perPageNum = perPageNum;
            this.keyword = keyword;
            this.flag = flag;
      }
      
      public String getKeyword() {
            return keyword;
      }
      public void setKeyword(String keyword) {
            this.keyword = keyword;
      }
      public EmpInfoCriteriaDTO() {
            this.page = 1;
            this.perPageNum = 10;
      }
      public int getPage() {
            return page;
      }
      public void setPage(int page) {
            if(page <= 0) {
                  this.page = 1;
                  return;
            }
            this.page = page;
      }
      
      // method for MyBatis SQL Mapper: 조회 시작 Row 취득하는 메서드
      public int getPageStart() {
            return (((this.page-1) * perPageNum) + 1);
      }
      
      // method for MyBatis SQL Mapper: 조회 마지막 Row 취득하는 메서드
      public int getPerPageNum() {
            return this.page * perPageNum;
            //2페이지 X 10 = 20번 게시글 까지 출력
      }
      public void setPerPageNum(int perPageNum) {
            this.perPageNum = perPageNum;
      }
      public String getFlag() {
            return flag;
      }
      public void setFlag(String flag) {
            this.flag = flag;
      }

	public String[] getCategory_keyword() {
		return category_keyword;
	}

	public void setCategory_keyword(String[] category_keyword) {
		this.category_keyword = category_keyword;
	}

	public String[] getCategory_check_keyword() {
		return category_check_keyword;
	}

	public void setCategory_check_keyword(String[] category_check_keyword) {
		this.category_check_keyword = category_check_keyword;
	}
      
      

	
      
}
