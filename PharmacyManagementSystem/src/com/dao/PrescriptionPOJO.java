package com.dao;

public class PrescriptionPOJO {
	private String prescriptionId;
	private ProductPOJO productInfo;
	private String doctorName;
	private String prescriptionDate;
	private String productQuantity;
	
	public PrescriptionPOJO() {
		
	}
	
	public PrescriptionPOJO(String prescriptionId, ProductPOJO productInfo, String doctorName, String prescriptionDate,
			String productQuantity) {
		super();
		this.prescriptionId = prescriptionId;
		this.productInfo = productInfo;
		this.doctorName = doctorName;
		this.prescriptionDate = prescriptionDate;
		this.productQuantity = productQuantity;
	}

	public String getPrescriptionId() {
		return prescriptionId;
	}
	public void setPrescriptionId(String prescriptionId) {
		this.prescriptionId = prescriptionId;
	}
	public ProductPOJO getProductInfo() {
		return productInfo;
	}
	public void setProductInfo(ProductPOJO productInfo) {
		this.productInfo = productInfo;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getPrescriptionDate() {
		return prescriptionDate;
	}
	public void setPrescriptionDate(String prescriptionDate) {
		this.prescriptionDate = prescriptionDate;
	}
	public String getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}
	@Override
	public String toString() {
		return "PrescriptionPOJO [PrescriptionId=" + prescriptionId + ", ProductInfo=" + productInfo + ", DoctorName="
				+ doctorName + ", PrescriptionDate=" + prescriptionDate + ", ProductQuantity=" + productQuantity + "]";
	}
	
}
