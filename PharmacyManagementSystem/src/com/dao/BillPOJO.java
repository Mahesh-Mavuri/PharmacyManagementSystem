package com.dao;

public class BillPOJO {
	private String transactionId;
	private String transactionDate;
	private CustomerPOJO customerInfo;
	private OperatorPOJO operatorInfo;
	private String paymentMode;
	private String bill;
	private PrescriptionPOJO prescriptionInfo;
	
	public BillPOJO() {
		
	}
	
	public BillPOJO(String transactionId, String transactionDate, CustomerPOJO customerInfo, OperatorPOJO operatorInfo,
			String paymentMode, String bill, PrescriptionPOJO prescriptionInfo) {
		super();
		this.transactionId = transactionId;
		this.transactionDate = transactionDate;
		this.customerInfo = customerInfo;
		this.operatorInfo = operatorInfo;
		this.paymentMode = paymentMode;
		this.bill = bill;
		this.prescriptionInfo = prescriptionInfo;
	}

	public String getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}
	public String getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}
	public CustomerPOJO getCustomerInfo() {
		return customerInfo;
	}
	public void setCustomerInfo(CustomerPOJO customerInfo) {
		this.customerInfo = customerInfo;
	}
	public OperatorPOJO getOperatorInfo() {
		return operatorInfo;
	}
	public void setOperatorInfo(OperatorPOJO operatorInfo) {
		this.operatorInfo = operatorInfo;
	}
	public String getPaymentMode() {
		return paymentMode;
	}
	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}
	public String getBill() {
		return bill;
	}
	public void setBill(String bill) {
		this.bill = bill;
	}
	public PrescriptionPOJO getPrescriptionInfo() {
		return prescriptionInfo;
	}
	public void setPrescriptionInfo(PrescriptionPOJO prescriptionInfo) {
		this.prescriptionInfo = prescriptionInfo;
	}
	@Override
	public String toString() {
		return "BillPOJO [transactionId=" + transactionId + ", transactionDate=" + transactionDate + ", customerInfo="
				+ customerInfo + ", operatorInfo=" + operatorInfo + ", paymentMode=" + paymentMode + ", bill=" + bill
				+ ", prescriptionInfo=" + prescriptionInfo + "]";
	}
	

}
