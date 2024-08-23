package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.CategoryVo;


@Repository
public class CategoryDao {

	@Autowired
	SessionFactory sf;

	public void insertcategory(CategoryVo categoryvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(categoryvo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List searchcategory(CategoryVo categoryvo)
	{
		List ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from CategoryVo");
			ls=q.list();
			tr.commit();
		}
		catch(Exception e)
		{			
		}
		return ls;
	}
	public void deletecategory(CategoryVo categoryvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(categoryvo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List editcategory(CategoryVo categoryvo)
	{
		List ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from CategoryVo where categoryId='"+categoryvo.getCategoryId()+"'");
			ls=q.list();
			tr.commit();
		}
		catch(Exception e)
		{			
		}
		return ls;
	}
	public void updatecategory(CategoryVo categoryvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(categoryvo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}
