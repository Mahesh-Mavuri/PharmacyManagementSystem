package com.dao;

public class ProductBatchPOJO {
	private String batchId;
	private String productExpiryDate;
	private String productQuantity;
	
	public ProductBatchPOJO() {
		
	}

	public ProductBatchPOJO(String batchId, String productExpiryDate, String productQuantity) {
		super();
		this.batchId = batchId;
		this.productExpiryDate = productExpiryDate;
		this.productQuantity = productQuantity;
	}

	public String getBatchId() {
		return batchId;
	}

	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}

	public String getProductExpiryDate() {
		return productExpiryDate;
	}

	public void setProductExpiryDate(String productExpiryDate) {
		this.productExpiryDate = productExpiryDate;
	}

	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

	@Override
	public String toString() {
		return "ProductBatchPOJO [batchId=" + batchId + ", productExpiryDate=" + productExpiryDate
				+ ", productQuantity=" + productQuantity + "]";
	}
	
	

}
