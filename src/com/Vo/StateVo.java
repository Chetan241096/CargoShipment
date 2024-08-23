package com.Vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="State")
public class StateVo {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int stateId;
    
    @Column(name="stateName")
    private String stateName;
    
    @ManyToOne
    private CountryVo countryvo;

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public CountryVo getCountryvo() {
		return countryvo;
	}

	public void setCountryvo(CountryVo countryvo) {
		this.countryvo = countryvo;
	}
    
    
    
}
