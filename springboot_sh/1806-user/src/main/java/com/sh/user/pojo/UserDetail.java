package com.sh.user.pojo;



import java.util.Date;

import javax.persistence.Table;

import com.sh.common.po.BasePojo;

@Table(name="user_detail")
public class UserDetail {
	
	private Long userDetailId;
	private String email;
	private String sex;
	private String avatar;
	private Date birthday;
	public Long getUserDetailId() {
		return userDetailId;
	}
	public void setUserDetailId(Long userDetailId) {
		this.userDetailId = userDetailId;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	
	
}
