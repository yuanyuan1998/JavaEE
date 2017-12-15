package com.cake.controller.product;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cake.entity.product.Product;
import com.cake.entity.product.ProductType;
import com.cake.entity.product.Size;
import com.cake.service.product.ProductServiceImpl;
import com.cake.service.product.ProductSizeServiceImpl;
import com.cake.service.product.ProductTypeServiceImpl;
import com.sun.xml.internal.bind.v2.model.core.ID;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Resource
	private ProductServiceImpl ProductServiceImpl;
	@Resource
	private ProductSizeServiceImpl ProductSizeServiceImpl;
	@Resource
	private ProductTypeServiceImpl ProductTypeServiceImpl;
	
	@RequestMapping("/allProduct")
	public String find(Model model,HttpServletRequest request){
		List<Product> lp=this.ProductServiceImpl.all();
		request.setAttribute("lp", lp);
		return "frontAllProduct";
	}
	
	@RequestMapping("/find")
	public String findByName(String name,HttpServletRequest request){
		List<Product> lp = this.ProductServiceImpl.findByName(name);
		List<ProductType> lpt = this.ProductTypeServiceImpl.find();
		request.setAttribute("lpt", lpt);
		request.setAttribute("pl", lp);
		return "backProduct";
	}
	
	@RequestMapping("/all")
	public String find(HttpServletRequest request){
		List<Product> pl=this.ProductServiceImpl.all();
		List<ProductType> lpt = this.ProductTypeServiceImpl.find();
		request.setAttribute("lpt", lpt);
		request.setAttribute("pl", pl);
		return "backProduct";
	}
	
	@RequestMapping("/deleteProduct")
	public String delete(@RequestParam("id") int id,HttpServletRequest request){
		this.ProductSizeServiceImpl.delete(id);
		return "redirect:/product/all";
	}
	
	@RequestMapping("/Product")
	public String findById(Model model,@RequestParam("id") int id,HttpServletRequest request){
		Product p = this.ProductServiceImpl.findById(id);
		request.setAttribute("p", p);
		return "frontProduct";
	}
	
	@RequestMapping("/LastedProduct")
	public String findLastedProduct(HttpServletRequest request){
		List<Product> flp = this.ProductServiceImpl.findLastedProduct();
		request.setAttribute("flp", flp);
		return "frontNewProduct";
	}
	
	@RequestMapping("/type")
	public String findByTypeId(@RequestParam("typeid") int typeId,HttpServletRequest request){
		List<Product> tpl = this.ProductServiceImpl.findByTypeId(typeId);
		request.setAttribute("tpl", tpl);
		return "frontTypeProduct";
	}
	
	@RequestMapping("/backtype")
	public String findByTypeIdBack(@RequestParam("id") int typeId,HttpServletRequest request){
		if(typeId == 0){
			List<Product> pl = this.ProductServiceImpl.all();
			request.setAttribute("pl", pl);
		}else{
			List<Product> tpl = this.ProductServiceImpl.findByTypeId(typeId);
			request.setAttribute("pl", tpl);
		}
		List<ProductType> lpt = this.ProductTypeServiceImpl.find();
		request.setAttribute("lpt", lpt);
		
		return "backProduct";
	}
	
	@RequestMapping("/backProductManager")
	public String backProduct(HttpServletRequest request){
		List<ProductType> ptl = this.ProductTypeServiceImpl.find();
		request.setAttribute("tpl", ptl);
		List<Product> pl = this.ProductServiceImpl.all();
		request.setAttribute("pl", pl);
		List<Size> sl = this.ProductSizeServiceImpl.find();
		request.setAttribute("sl", sl);
		return "backProductManager";
	}
	
	@RequestMapping("/backAddProduct")
	public String backAddProduct(@RequestParam("name") String name,@RequestParam("description") String description,@RequestParam("date") Date date,@RequestParam("hot") String  hot,@RequestParam("typeId")int typeId,@RequestParam("price") int price){
		Product p = new Product();
		p.setName(name);
		p.setDate(date);
		p.setDescription(description);
		p.setHot(hot);
		p.setTypeId(typeId);
		p.setPrice(price);
		this.ProductServiceImpl.addProduct(p);
		return "redirect:/product/backProductManager";
	}
	
	@RequestMapping("/backReviceProduct")
	public String backReviceProduct(@RequestParam("name") String name,@RequestParam("description") String description,@RequestParam("date") Date date,@RequestParam("hot") String  hot,@RequestParam("id")int id,@RequestParam("size") Integer sizeId,@RequestParam("type") Integer typeId)  {
		if(!name.equals("")){
			this.ProductServiceImpl.updateName(id,name);
		}
		if(!description.equals("")){
			this.ProductServiceImpl.updateDescription(id,description);
		}
		if(!date.equals("")){
			this.ProductServiceImpl.updateDate(id,date );
		}
		if(!hot.equals("")){
			this.ProductServiceImpl.updateHot(id, hot);
		}
		if(sizeId != null){
			this.ProductServiceImpl.updateSize(id, sizeId);
		}
		if(typeId != null){
			this.ProductServiceImpl.updatetype(id, typeId);
		}
		return "redirect:/product/backProductManager";
	}
	
	@RequestMapping("/backAddType")
	public String backAddType(ProductType pt){
		this.ProductTypeServiceImpl.save(pt);
		return "redirect:/product/backProductManager";
	}
	
	@RequestMapping("/backDeleteProduct")
	public String BackDeleteProduct(@RequestParam("productId")int productId,@RequestParam("sizeId") int sizeId){
		this.ProductServiceImpl.deleteProduct(productId, sizeId);
		return "redirect:/product/backProductManager";
	}
	
	@RequestMapping("/hot")
	public String findHot(@RequestParam("hot") String hot,HttpServletRequest request){
		List<Product> h = this.ProductServiceImpl.findHot(hot);
		request.setAttribute("h", h);
		return "frontHotProduct";
	}
	
}
