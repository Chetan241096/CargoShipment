package com.Vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="coverspecification")
public class CoverSpecificationVo
{
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int coverSpecificationId;
		
		@Column(name="coverSpecificationName")
		private String coverSpecificationName;
		
		@Column(name="coverDescription")
		private String coverDescription;

		public int getCoverSpecificationId() {
			return coverSpecificationId;
		}

		public void setCoverSpecificationId(int coverSpecificationId) {
			this.coverSpecificationId = coverSpecificationId;
		}

		public String getCoverSpecificationName() {
			return coverSpecificationName;
		}

		public void setCoverSpecificationName(String coverSpecificationName) {
			this.coverSpecificationName = coverSpecificationName;
		}

		public String getCoverDescription() {
			return coverDescription;
		}

		public void setCoverDescription(String coverDescription) {
			this.coverDescription = coverDescription;
		}
		
		
		
		
}
