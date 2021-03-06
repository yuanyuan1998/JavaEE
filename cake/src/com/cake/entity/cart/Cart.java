package com.cake.entity.cart;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.GenericGenerator;

import com.cake.entity.product.Product;

@Entity
@Table(name="cart")
public class Cart {
	private int id;
	private int productId;
	private int size;
	private int count;
	private int userId;
	private int countNum;
	private int productPrice;
	private String productName;
	private String productImg;
	
	@Id
    @GeneratedValue(generator="my_gen")
    @GenericGenerator(name = "my_gen", strategy = "native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="productId")
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	@Column(name="size")
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	@Column(name="count")
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Column(name="userId")
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Formula(value="(select sum(c.count) from cart as c where c.userId = userId)")  
	public int getCountNum() {
		return countNum;
	}
	public void setCountNum(int countNum) {
		this.countNum = countNum;
	}
	@Formula(value="(select p.price from product as p where p.id = productId)") 
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	@Formula(value="(select p.name from product as p where p.id = productId)") 
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	@Formula(value="(select p.img1 from product as p where p.id = productId)") 
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
	
	
}
