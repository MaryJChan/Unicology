package com.unicology.dto.empinfo;
public class EmpInfoPageMakerDTO {
      private int totalCount;           // 전체 데이터 개수
      private int startPage;                // 시작 페이지 번호
      private int endPage;                  // 끝 페이지 번호
      private boolean prev;                 // 이전 페이지
      private boolean next;                 // 이후 페이지
      
      private int displayPageNum = 10;  // 화면에 보여지는 블럭 수
      private EmpInfoCriteriaDTO empInfoCriDto;
      
      public int getTotalCount() {
            return totalCount;
      }
      
      public void setTotalCount(int totalCount) {
            this.totalCount = totalCount;
            calcData();
      }
      
      private void calcData() {
            //Math 클래스의 ceil 메서드는 무조건 소수점을 올림함 0.2 = 1 로 처리
            endPage = (int)Math.ceil(empInfoCriDto.getPage() / (double)displayPageNum) * displayPageNum;
            startPage = (endPage - displayPageNum) + 1;
            
            int tempEndPage = (int)(Math.ceil(totalCount / (double)(empInfoCriDto.getPerPageNum() / empInfoCriDto.getPage())));
            
            if(endPage > tempEndPage) {
                  endPage = tempEndPage;
            }
            
            prev = startPage == 1 ? false : true;
            next = (endPage * (empInfoCriDto.getPerPageNum() / empInfoCriDto.getPage())) >= totalCount ? false : true;
            
      }
      public int getStartPage() {
            return startPage;
      }
      public void setStartPage(int startPage) {
            this.startPage = startPage;
      }
      public int getEndPage() {
            return endPage;
      }
      public void setEndPage(int endPage) {
            this.endPage = endPage;
      }
      public boolean isPrev() {
            return prev;
      }
      public void setPrev(boolean prev) {
            this.prev = prev;
      }
      public boolean isNext() {
            return next;
      }
      public void setNext(boolean next) {
            this.next = next;
      }
      public int getDisplayPageNum() {
            return displayPageNum;
      }
      public void setDisplayPageNum(int displayPageNum) {
            this.displayPageNum = displayPageNum;
      }
      public EmpInfoCriteriaDTO getEmpInfoCriDto() {
            return empInfoCriDto;
      }
      public void setEmpInfoCriDto(EmpInfoCriteriaDTO empInfoCriDto) {
            this.empInfoCriDto = empInfoCriDto;
      }
      
}
