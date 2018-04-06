package com.techelevator.aa.model.aminoacid;

public class AminoAcid {
	private String imageName;
	private String name;
	private String threeLetterAbv;
	private String oneLetterAbv;
	private String category;
	private String rGroup;
	private Double isoelectricPoint;
	private String description;
	
//	public AminoAcid(String imageName, String name, String threeLetterAbv, String oneLetterAbv,
//			String category, String rGroup, Double isoelectricPoint, String description) {
//		this.imageName = imageName;
//		this.name = name;
//		this.threeLetterAbv = threeLetterAbv;
//		this.oneLetterAbv = oneLetterAbv;
//		this.category = category;
//		this.rGroup = rGroup;
//		this.isoelectricPoint = isoelectricPoint;
//		this.description = description;
//	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getThreeLetterAbv() {
		return threeLetterAbv;
	}

	public void setThreeLetterAbv(String threeLetterAbv) {
		this.threeLetterAbv = threeLetterAbv;
	}

	public String getOneLetterAbv() {
		return oneLetterAbv;
	}

	public void setOneLetterAbv(String oneLetterAbv) {
		this.oneLetterAbv = oneLetterAbv;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getrGroup() {
		return rGroup;
	}

	public void setrGroup(String rGroup) {
		this.rGroup = rGroup;
	}

	public Double getIsoelectricPoint() {
		return isoelectricPoint;
	}

	public void setIsoelectricPoint(Double isoelectricPoint) {
		this.isoelectricPoint = isoelectricPoint;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

}
