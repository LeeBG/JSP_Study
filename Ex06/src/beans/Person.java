package beans;
/*
 *  Java Beans
 * 	- 데이터를 주고 받기 위한 클래스
 * 	- 웹에선 파라미터, DB의 정보를 주고 받을 때 사용
 *  - 작성 규칙이 있다.
 *  
 *  규칙) 
 *  1. 기본 생성자가 필수
 *  2. 필드는 private, 메서드는 public 처리
 * 
 * 
 * 	※ 개발자가 생성자를 작성해두면 기본 생성자는 자동으로 생성되지 않는다.
 */
public class Person {
	// 파라미티와 필드의 이름이 동일하면 편하게 사용할 수 있다.
	
	private String name;
	private int age;
	private double height;
	private String email;
	private String address;
	
	//  생성자를 적지 않으면 알아서 매개변수가 없는 기본 생성자를 만들어준다.
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
