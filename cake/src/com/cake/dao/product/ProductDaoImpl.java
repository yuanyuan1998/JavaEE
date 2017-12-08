package com.cake.dao.product;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.cake.entity.product.Product;

@Repository
public class ProductDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Product> findAll(){
		return  this.sessionFactory.getCurrentSession().createQuery("from "+Product.class.getSimpleName()).list();
	}
	
	public Product findById(int id){
		return (Product)this.sessionFactory.getCurrentSession().get(Product.class, id);
	}
	
	public List<Product> findLastedProduct(){
		String hql = "from Product p where p.typeId = ? order by date desc ";
		Query query =  this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,1);
		query.setFirstResult(0);
        query.setMaxResults(3);
		return query.list();
	}
	
	public List<Product> findByTypeId(int typeId){
		String hql = "from Product where typeid = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,typeId);
		return query.list();
	}
	
	public List<Product> findHot(String hot){
		String hql = "from Product where hot like ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,hot);
		return query.list();
	}
}