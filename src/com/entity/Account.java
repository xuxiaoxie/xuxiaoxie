package com.entity;

import java.io.Serializable;

import org.nutz.dao.entity.annotation.Column;
import org.nutz.dao.entity.annotation.Id;
import org.nutz.dao.entity.annotation.Table;

/**
 * 会员对象实体类
 * 
 * @author 刘立立
 * 
 */
@Table("account")
public class Account implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id(auto=true)
	private Long id=1L;

	@Column("name")
	private String name;
	
	@Column("password")
	private String password;
	
	@Column("original_Id")
	private Long originalId;
	
	@Column("appId")
	private String appId;
	
	@Column("appSecret")
	private String appSecret;
	
	@Column("url")
	private String 	url;
	
	@Column("token")
	private String token;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getOriginalId() {
		return originalId;
	}

	public void setOriginalId(Long originalId) {
		this.originalId = originalId;
	}

	public String getAppId() {
		return appId;
	}

	public void setAppId(String appId) {
		this.appId = appId;
	}

	public String getAppSecret() {
		return appSecret;
	}

	public void setAppSecret(String appSecret) {
		this.appSecret = appSecret;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	
}
