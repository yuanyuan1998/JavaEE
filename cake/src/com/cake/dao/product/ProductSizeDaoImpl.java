package com.cake.dao.product;

import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.cake.entity.product.Product;
import com.cake.entity.product.ProductType;
import com.cake.entity.product.Size;
import com.cake.entity.user.User;

@Repository
public class ProductSizeDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Size> findById(int id){
		StringBuffer buffer = new StringBuffer();
        buffer.append( "from Size s join s.product p where p.id = ?");
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(buffer.toString());
		query.setParameter(0,id);
		return query.list();
	}

	public void delete(int id){
		String hql = "delete from Product where id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,id);
		query.executeUpdate();  
	}
	
	public void save(Size size){
		this.sessionFactory.getCurrentSession().save(size);
	}
	
	public List<Size> find(){
		return  this.sessionFactory.getCurrentSession().createQuery("from "+Size.class.getSimpleName()).list();
	}
	
}
