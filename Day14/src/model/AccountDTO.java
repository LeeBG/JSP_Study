package model;

import java.sql.Date;

public class AccountDTO {
	private int idx;
	private String userId;
	private String userPw;
	private String nick;
	private String name;
	private String email;
	private Date join_date;
	
	public AccountDTO() {
		
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoin_Date() {
		return join_date;
	}
	public void setJoin_Date(Date join_Date) {
		this.join_date = join_Date;
	}
	
	
}
