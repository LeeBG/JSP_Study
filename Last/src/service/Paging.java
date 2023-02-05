package service;

public class Paging {
	/*
	 * 512개의 페이지를 가진다
	 * 총 페이지 수 : totalPage
	 * 512 / perCount
	 * 512 / 20
	 * 25
	 * ... 12
	 * 
	 * 
	 * 나머지 12개의 글을 출력할 페이지가 1개 더 필요
	 * totalPage += (total % perCount == 0) ? 0 : 1;
	 * totalPage = 26;
	 * 
	 * 
	 * 2. 사용자가 요청한 페이지에 따라서 글 범위 구하기
	 * -- 최신 페이징 쿼리
		select * from board
		order by idx desc
		offset [offset] rows -- 시작위치를 정함(0부터 시작)
		fetch first [perCount] rows only;
	 * 
	 * 사용자가 요청한 페이지
	 * reqPage = 1,2,3...
	 */
	
	private int total;		// 전체 게시글 수
	private int perCount = 20;	// 페이지당 글 수
	private int totalPage;	// 총 페이지 수
	private int requestPage;
	private int offset;		// 게시글을 자를 시작 위치
	private int perPage = 10;	// 한화면에 보일 페이지 수
	private int section;
	private int begin,end;
	
	// 생성자
	public Paging(int requestPage,int total) {
		this.total = total;
		this.requestPage = requestPage;
		
		// ex) totalPage = 26
		totalPage = total / perCount;
		totalPage += (total % perCount == 0) ? 0 : 1;
		
		offset = (requestPage -1) * perCount;
		
		
		/*
			requestPage 	offset
			----------------------
			1				0
			2				20
			3				40
			4				60
			
			...				(n-1)*20
		 */
		
		/* section	begin	end
		   ---------------------
			0		1		10
			1		11		20
			2		21		30
			...
		*/
		section = (requestPage-1) / perPage;

		
		begin = (section) * perPage + 1;
		end = (section+1) * perPage;
		
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public int getPerCount() {
		return perCount;
	}


	public void setPerCount(int perCount) {
		this.perCount = perCount;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getRequestPage() {
		return requestPage;
	}


	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}


	public int getOffset() {
		return offset;
	}


	public void setOffset(int offset) {
		this.offset = offset;
	}


	public int getPerPage() {
		return perPage;
	}


	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}


	public int getSection() {
		return section;
	}


	public void setSection(int section) {
		this.section = section;
	}


	public int getBegin() {
		return begin;
	}


	public void setBegin(int begin) {
		this.begin = begin;
	}


	public int getEnd() {
		return end;
	}


	public void setEnd(int end) {
		this.end = end;
	}

	
}
