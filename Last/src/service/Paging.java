package service;

public class Paging {
	/*
	 * 512���� �������� ������
	 * �� ������ �� : totalPage
	 * 512 / perCount
	 * 512 / 20
	 * 25
	 * ... 12
	 * 
	 * 
	 * ������ 12���� ���� ����� �������� 1�� �� �ʿ�
	 * totalPage += (total % perCount == 0) ? 0 : 1;
	 * totalPage = 26;
	 * 
	 * 
	 * 2. ����ڰ� ��û�� �������� ���� �� ���� ���ϱ�
	 * -- �ֽ� ����¡ ����
		select * from board
		order by idx desc
		offset [offset] rows -- ������ġ�� ����(0���� ����)
		fetch first [perCount] rows only;
	 * 
	 * ����ڰ� ��û�� ������
	 * reqPage = 1,2,3...
	 */
	
	private int total;		// ��ü �Խñ� ��
	private int perCount = 20;	// �������� �� ��
	private int totalPage;	// �� ������ ��
	private int requestPage;
	private int offset;		// �Խñ��� �ڸ� ���� ��ġ
	private int perPage = 10;	// ��ȭ�鿡 ���� ������ ��
	private int section;
	private int begin,end;
	
	// ������
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
