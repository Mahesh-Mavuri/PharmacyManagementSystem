package com.dao;

public class CustomerPOJO {
	private String customerId;
	private String customerName;
	private String customerEmail;
	private String customerPhone;
	
	public CustomerPOJO() {
		
	}
	
	public CustomerPOJO(String customerId, String customerName, String customerEmail, String customerPhone) {
		super();
		this.customerId = customerId;
		this.customerName = customerName;
		this.customerEmail = customerEmail;
		this.customerPhone = customerPhone;
	}

	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	@Override
	public String toString() {
		return "CustomerPOJO [CustomerId=" + customerId + ", CustomerName=" + customerName + ", CustomerEmail="
				+ customerEmail + ", CustomerPhone=" + customerPhone + "]";
	}
	
}
