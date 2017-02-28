package com.atguigu.sssp.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Table(name = "User")
@Entity
public class User {
	private Integer id; // 编号
	private String lastName; // 姓名
	private String email; // 邮箱
	private Date birth; // 生日
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createTime; // 创建日期
	private Role role; // 角色
	private Integer age; // 年龄
	private String telephone; // 联系电话
	private String sex; // 性别

	@GeneratedValue
	@Id
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Temporal(TemporalType.DATE)
	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	@Temporal(TemporalType.TIMESTAMP)
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@JoinColumn(name = "role_id")
	@ManyToOne(fetch = FetchType.LAZY)
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public User() {
		super();
	}

	public User(Integer id, String lastName, String email, Date birth, Date createTime, Role role, Integer age,
			String addr, String telephone, String record, String college, String major, String sex, String nation,
			String identityCard, String marriage) {
		super();
		this.id = id;
		this.lastName = lastName;
		this.email = email;
		this.birth = birth;
		this.createTime = createTime;
		this.role = role;
		this.age = age;
		this.telephone = telephone;
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", lastName=" + lastName + ", email=" + email + ", birth=" + birth + ", createTime="
				+ createTime + ", role=" + role + ", age=" + age + ", telephone=" + telephone + ", sex=" + sex + "]";
	}
	
	

}
