package com.cake.controller.product;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cake.entity.product.Product;
import com.cake.entity.product.ProductSize;
import com.cake.service.product.ProductServiceImpl;
import com.cake.service.product.ProductSizeServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl ProductServiceImpl;
	@Resource
	private ProductSizeServiceImpl ProductSizeServiceImpl;
	
	@RequestMapping("/allProduct")
	public String find(Model model,HttpServletRequest request){
		List<Product> lp=this.ProductServiceImpl.findAll();
		System.out.println(lp.get(1).getName());
		request.setAttribute("lp", lp);
		model.addAttribute(lp);
		return "allproduct";
	}
	
	@RequestMapping("/Product")
	public String findById(Model model,@RequestParam("id") int id,HttpServletRequest request){
		Product p = this.ProductServiceImpl.findById(id);
		List<ProductSize> sl = this.ProductSizeServiceImpl.findSize(id);
		request.setAttribute("p", p);
		request.setAttribute("sl", sl);
		return "product";
	}
	
	@RequestMapping("/LastedProduct")
	public String findLastedProduct(HttpServletRequest request){
		List<Product> flp = this.ProductServiceImpl.findLastedProduct();
		request.setAttribute("flp", flp);
		return "newproduct";
	}
	
	@RequestMapping("/type")
	public String findByTypeId(@RequestParam("typeid") int typeId,HttpServletRequest request){
		List<Product> tpl = this.ProductServiceImpl.findByTypeId(typeId);
		request.setAttribute("tpl", tpl);
		return "typeproduct";
	}

}
