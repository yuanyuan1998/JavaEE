package com.cake.entity.product;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.JoinColumn;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.GenericGenerator;

import com.cake.entity.user.OrderProduct;
import com.cake.entity.user.Orders;

@Entity
@Table(name="product")
public class Product {
	private int id;
	private String name;
	private String description;
	private Date date;
	private String hot;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
	private Integer price;
	private Integer typeId;
	private String typeName;
	private List<Size> size = new ArrayList<Size>();
	private List<OrderProduct> orderProduct = new ArrayList<OrderProduct>(); 
	
	@Id
    @GeneratedValue(generator="my_gen")
    @GenericGenerator(name = "my_gen", strategy = "native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="description")
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Column(name="date")
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Column(name="hot")
	public String getHot() {
		return hot;
	}
	public void setHot(String hot) {
		this.hot = hot;
	}
	@Column(name="img1")
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	@Column(name="img2")
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	@Column(name="img3")
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	@Column(name="img4")
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	@Column(name="img5")
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	@Column(name="img6")
	public String getImg6() {
		return img6;
	}
	public void setImg6(String img6) {
		this.img6 = img6;
	}
	@Column(name="price")
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	@Column(name="typeid")
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	@ManyToMany(cascade={CascadeType.PERSIST,CascadeType.MERGE})
    @JoinTable(name="productsize", 
        joinColumns=@JoinColumn(name="productId"),
        inverseJoinColumns=@JoinColumn(name="sizeId"))
	public List<Size> getSize() {
		return size;
	}
	public void setSize(List<Size> size) {
		this.size = size;
	}
	@Formula(value="(select t.type from producttype as t,product as p  where t.id = p.typeId and p.id = id)") 
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	@OneToMany(mappedBy="product")
	public List<OrderProduct> getOrderProduct() {
		return orderProduct;
	}
	public void setOrderProduct(List<OrderProduct> orderProduct) {
		this.orderProduct = orderProduct;
	}
}
