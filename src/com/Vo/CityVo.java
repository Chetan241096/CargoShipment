package com.Vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="city")

public class CityVo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cityId;
	
	@Column(name="cityName")
	private String cityName;
	
	@ManyToOne
	private CountryVo countryvo;
	
	@ManyToOne
	private StateVo statevo;

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public CountryVo getCountryvo() {
		return countryvo;
	}

	public void setCountryvo(CountryVo countryvo) {
		this.countryvo = countryvo;
	}

	public StateVo getStatevo() {
		return statevo;
	}

	public void setStatevo(StateVo statevo) {
		this.statevo = statevo;
	}
	
	

		}
	
	
