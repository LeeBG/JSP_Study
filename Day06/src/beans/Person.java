package beans;
/*
 *  Java Beans
 * 	- �����͸� �ְ� �ޱ� ���� Ŭ����
 * 	- ������ �Ķ����, DB�� ������ �ְ� ���� �� ���
 *  - �ۼ� ��Ģ�� �ִ�.
 *  
 *  ��Ģ) 
 *  1. �⺻ �����ڰ� �ʼ�
 *  2. �ʵ�� private, �޼���� public ó��
 * 
 * 
 * 	�� �����ڰ� �����ڸ� �ۼ��صθ� �⺻ �����ڴ� �ڵ����� �������� �ʴ´�.
 */
public class Person {
	// �Ķ��Ƽ�� �ʵ��� �̸��� �����ϸ� ���ϰ� ����� �� �ִ�.
	
	private String name;
	private int age;
	private double height;
	private String email;
	private String address;
	
	//  �����ڸ� ���� ������ �˾Ƽ� �Ű������� ���� �⺻ �����ڸ� ������ش�.
	
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
