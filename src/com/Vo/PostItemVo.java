package com.Vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import javax.persistence.GenerationType;

@Entity
@Table(name="postItem")
public class PostItemVo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int postItemId;

	@ManyToOne
	private CategoryVo categoryVo;
	
	@ManyToOne
	private subCategoryVo subCategoryVo;
	
	@ManyToOne
	private LoginVo loginVo;
	
	@Column(name="itemName")
	private String itemName;
	
	@Column(name="itemDescription")
	private String itemDescription;
	
	@Column(name="itemCount")
	private String itemCount;
	
	@Column(name="itemStatus")
	private String itemStatus;

	public int getPostItemId() {
		return postItemId;
	}

	public void setPostItemId(int postItemId) {
		this.postItemId = postItemId;
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

	public LoginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(LoginVo loginVo) {
		this.loginVo = loginVo;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public String getItemCount() {
		return itemCount;
	}

	public void setItemCount(String itemCount) {
		this.itemCount = itemCount;
	}

	public String getItemStatus() {
		return itemStatus;
	}

	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}

	
}
