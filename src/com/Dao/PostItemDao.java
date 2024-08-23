package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.ComplainVo;
import com.Vo.PostItemVo;
import com.Vo.subCategoryVo;

@Repository
public class PostItemDao {
	
	@Autowired
	SessionFactory sf;

	public void insertpostitem(PostItemVo postItemVo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(postItemVo);
			tr.commit();
			session.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List searchPostItem(PostItemVo postItemVo)
	{
		List ls=new ArrayList();
		try
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from PostItemVo ");
			ls=q.list();
			tr.commit();
			session.close();
			
		}
		catch(Exception e)
		{
			
		}
		return ls;
	}
	
	public List editPostItem(PostItemVo postItemVo) 
	{
		List ls = new ArrayList();
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from PostItemVo where itemStatus='active'");
			ls= q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}
	public List searchPostItembylogin(PostItemVo postItemVo) {
		// TODO Auto-generated method stub
		List ls = new ArrayList();
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from PostItemVo where loginVo='"+postItemVo.getLoginVo().getId()+"'");
			ls = q.list();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return ls;
	}

	

}
