package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.StateVo;
import com.Vo.subCategoryVo;

@Repository
public class SubCategoryDao {
	@Autowired
	SessionFactory sf;

	public void insertsubcategory(subCategoryVo subcategoryvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(subcategoryvo);
			tr.commit();
			session.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List searchsubcategory(subCategoryVo subcategoryvo)
	{
		List ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from subCategoryVo");
			ls=q.list();
			tr.commit();
		}
		catch(Exception e)
		{
			
		}
		return ls;
	}
	public void deletesubcategory(subCategoryVo subcategoryvo)
	{
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.delete(subcategoryvo);
			tr.commit();
		}
		catch(Exception e)
		{
			
		}
	}
		public List editsubcateogory(subCategoryVo subcategoryvo)
		{
			List ls=new ArrayList();
			try
			{
				Session session=sf.openSession();
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from subCategoryVo where subCategoryId='"+subcategoryvo.getSubCategoryId()+"'");
				ls=q.list();
				tr.commit();		
			}
			catch(Exception e)
			{
				
			}
			return ls;
		}
		public void updatesubcategory(subCategoryVo subcategoryvo)
		{
			try 
			{
				Session session = sf.openSession();
				Transaction tr = session.beginTransaction();
				session.saveOrUpdate(subcategoryvo);
				tr.commit();
				session.close();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}	
		
		public List SearchSubCategoryAjax(subCategoryVo subCategoryVo)
		{

			List subCategoryList = new ArrayList();
			try {
				Session session1 = sf.openSession();
				System.err.println("from subCategoryVo where categoryVo='"+subCategoryVo.getCategoryVo().getCategoryId()+"'");
				Query search = session1.createQuery("from subCategoryVo where categoryVo='"+subCategoryVo.getCategoryVo().getCategoryId()+"'" );
				subCategoryList = search.list();
			} catch (Exception e) {
				e.printStackTrace();
			}
				return subCategoryList;

		}


	}