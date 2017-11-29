package com.cake.entity.cart;

import javax.persistence.Entity;

import com.cake.entity.product.Product;

public class CartItem {
	private Product product;
	private int count;
	private int size;
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	
	
}
