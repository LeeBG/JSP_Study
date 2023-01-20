package beans;

import java.sql.Date;

// VO : value Object
// - DTO와 동일하다.
// - DTO, DAO 이름이 헷갈린다면 VO라고 작성해도 된다.

public class PersonDto {
	private String name;
	private Double height;
	private Date birth;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getHeight() {
		return height;
	}
	public void setHeight(Double height) {
		this.height = height;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}

}
