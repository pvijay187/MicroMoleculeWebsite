package net.pvijayaraghavan.RealityRealty.model;

public class Property {
	private Long id;
	private String address;
	private String city;
	private String state;
	private String zip;
	private Integer price;
	private String realtorName;
	private String realtorPhone;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getRealtorName() {
		return realtorName;
	}
	public void setRealtorName(String realtorName) {
		this.realtorName = realtorName;
	}
	public String getRealtorPhone() {
		return realtorPhone;
	}
	public void setRealtorPhone(String realtorPhone) {
		this.realtorPhone = realtorPhone;
	}
	
	
	

}
