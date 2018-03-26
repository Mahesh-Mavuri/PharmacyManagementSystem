package com.dao.dashboardoperations.admin;

import com.dao.ProductBatchPOJO;
import com.dao.ProductPOJO;

public class AdminManageInventory implements IAdminManageInventory {

	@Override
	public ProductPOJO[] getAllProducts() {

		return null;
	}

	@Override
	public boolean addProduct(ProductPOJO productInfo) 
	{
		return false;
	}

	@Override
	public boolean addProduct(String productName, ProductBatchPOJO batchInfo) {

		return false;
	}

	@Override
	public boolean removeProduct(String productName) {

		return false;
	}

	@Override
	public boolean updateProduct(String productName, String productQuantity) {

		return false;
	}

	@Override
	public ProductBatchPOJO getProductByName(String productName) {

		return null;
	}

}
