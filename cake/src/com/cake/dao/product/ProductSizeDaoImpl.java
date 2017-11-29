package com.cake.dao.product;

import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.product.ProductSize;

@Repository
public class ProductSizeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<ProductSize> findById(int id){
		String hql = "from ProductSize where productid = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		return query.list();
	}
}
