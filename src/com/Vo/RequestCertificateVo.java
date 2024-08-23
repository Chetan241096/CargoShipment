package com.Vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.GenerationType;

@Entity
@Table(name="requestcerificate")

public class RequestCertificateVo {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int requestCertificateId;
	
	@ManyToOne
	private PostItemVo postItemVo;
	
	@ManyToOne
	private CategoryVo categoryVo;
	
	@ManyToOne
	private subCategoryVo subCategoryVo;
	
	@ManyToOne
	private CountryVo countryVo;
	
	@ManyToOne
	private StateVo stateVo;
	
	@ManyToOne
	private CityVo cityVo;
	
	@ManyToOne
	private LoginVo loginVo;

	public int getRequestCertificateId() {
		return requestCertificateId;
	}

	public void setRequestCertificateId(int requestCertificateId) {
		this.requestCertificateId = requestCertificateId;
	}

	public PostItemVo getPostItemVo() {
		return postItemVo;
	}

	public void setPostItemVo(PostItemVo postItemVo) {
		this.postItemVo = postItemVo;
	}

	public CategoryVo getCategoryVo() {
		return categoryVo;
	}

	public void setCategoryVo(CategoryVo categoryVo) {
		this.categoryVo = categoryVo;
	}

	public subCategoryVo getSubCategoryVo() {
		return subCategoryVo;
	}

	public void setSubCategoryVo(subCategoryVo subCategoryVo) {
		this.subCategoryVo = subCategoryVo;
	}

	public CountryVo getCountryVo() {
		return countryVo;
	}

	public void setCountryVo(CountryVo countryVo) {
		this.countryVo = countryVo;
	}

	public StateVo getStateVo() {
		return stateVo;
	}

	public void setStateVo(StateVo stateVo) {
		this.stateVo = stateVo;
	}

	public CityVo getCityVo() {
		return cityVo;
	}

	public void setCityVo(CityVo cityVo) {
		this.cityVo = cityVo;
	}

	public LoginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(LoginVo loginVo) {
		this.loginVo = loginVo;
	}
	
	
		
	
	
	
	
}
