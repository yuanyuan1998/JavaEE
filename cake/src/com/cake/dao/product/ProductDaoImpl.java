package com.cake.dao.product;

import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.cake.entity.product.Product;
import com.cake.entity.user.User;

@Repository
public class ProductDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	
	public void addProduct(Product p){
		this.sessionFactory.getCurrentSession().save(p);
	}
	
	public void deleteProduct(int productId,int sizeId){
		String sql = "delete from productsize where productId = ? and sizeId = ?";
		SQLQuery query = this.sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setParameter(0, productId);
		query.setParameter(1, sizeId);
		query.executeUpdate();
	}
	
	public List<Product> findByNames(String name){
		String hql = "from Product p where p.name like ? ";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, "%"+name+"%");  
		return query.list();
	}
	
	public List<Product> all(){
		StringBuffer buffer = new StringBuffer();
        buffer.append( "from Product");
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(buffer.toString());
		return query.list();
	}
	
	public Product findById(int id){
		StringBuffer buffer = new StringBuffer();
        buffer.append( "from Product p where p.id = ? ");
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(buffer.toString());
		query.setParameter(0,id);
		return (Product) query.uniqueResult();
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
	
	public void updateDescription(int id,String d){
		String hql = "update Product as p set p.description = ? where p.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,d);
		query.setParameter(1,id);
		query.executeUpdate();
	}
	
	public void updateHot(int id,String hot){
		String hql = "update Product as p set p.hot = ? where p.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,hot);
		query.setParameter(1,id);
		query.executeUpdate();
	}
	
	public void updateDate(int id,Date Date){
		String hql = "update Product as p set p.date = ? where p.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,Date);
		query.setParameter(1,id);
		query.executeUpdate();
	}
	
	public void updateName(int id,String name){
		String hql = "update Product as p set p.name = ? where p.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,name);
		query.setParameter(1,id);
		query.executeUpdate();
	}
	
	public void updatetype(int id,int typeId){
		String hql = "update Product as p set p.typeId = ? where p.id = ?";
		Query query=(Query) this.sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0,typeId);
		query.setParameter(1,id);
		query.executeUpdate();
	}
	
	public void updateSize(int id,int sizeId){
		String sql = "insert into productsize(productId,sizeId) values(?,?)";
		SQLQuery query = this.sessionFactory.getCurrentSession().createSQLQuery(sql);
		query.setParameter(0, id);
		query.setParameter(1, sizeId);
		query.executeUpdate();
	}
}