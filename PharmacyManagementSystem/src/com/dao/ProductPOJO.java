package com.dao;

import java.util.List;

public class ProductPOJO {
	private String productId;
	private String productName;
	private String productType;
	private String productPrice;
	private SupplierPOJO supplierInfo;
	private List<ProductBatchPOJO> batches;
	public ProductPOJO() {
		
	}
	
	public ProductPOJO(String productId, String productName, String productType, String productPrice) {
		
		this.productId = productId;
		this.productName = productName;
		this.productType = productType;
		this.productPrice = productPrice;
	}

	public ProductPOJO(String productId, String productName, String productType, String productPrice,
			SupplierPOJO supplierInfo, List<ProductBatchPOJO> batches) {
		
		this.productId = productId;
		this.productName = productName;
		this.productType = productType;
		this.productPrice = productPrice;
		this.supplierInfo = supplierInfo;
		this.batches = batches;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public SupplierPOJO getSupplierInfo() {
		return supplierInfo;
	}
	public void setSupplierInfo(SupplierPOJO supplierInfo) {
		this.supplierInfo = supplierInfo;
	}
	public List<ProductBatchPOJO> getBatches() {
		return batches;
	}
	public void setBatches(List<ProductBatchPOJO> batches) {
		this.batches = batches;
	}
	@Override
	public String toString() {
		return "ProductPOJO [productId=" + productId + ", productName=" + productName + ", productType=" + productType
				+ ", productPrice=" + productPrice + ", supplierInfo=" + supplierInfo + ", batches=" + batches + "]";
	}
	
	
	

}
