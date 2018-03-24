package com.dao;

public class SupplierPOJO {
	private String supplierId;
	private String supplierCompany;
	private String supplierEmail;
	private String supplierPhone;
	
	public SupplierPOJO() {
		
	}
	
	public SupplierPOJO(String supplierId, String supplierCompany, String supplierEmail, String supplierPhone) {
		super();
		this.supplierId = supplierId;
		this.supplierCompany = supplierCompany;
		this.supplierEmail = supplierEmail;
		this.supplierPhone = supplierPhone;
	}

	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierCompany() {
		return supplierCompany;
	}
	public void setSupplierCompany(String supplierCompany) {
		this.supplierCompany = supplierCompany;
	}
	public String getSupplierEmail() {
		return supplierEmail;
	}
	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}
	public String getSupplierPhone() {
		return supplierPhone;
	}
	public void setSupplierPhone(String supplierPhone) {
		this.supplierPhone = supplierPhone;
	}
	@Override
	public String toString() {
		return "SupplierPOJO [supplierId=" + supplierId + ", supplierCompany=" + supplierCompany + ", supplierEmail="
				+ supplierEmail + ", supplierPhone=" + supplierPhone + "]";
	}
	
}
