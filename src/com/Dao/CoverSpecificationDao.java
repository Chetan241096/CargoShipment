package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.CoverSpecificationVo;

@Repository
public class CoverSpecificationDao 
{
	@Autowired
	SessionFactory sf;

	public void insertCoverSpecification(CoverSpecificationVo CoverSpecificationvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(CoverSpecificationvo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List searchCoverSpecification(CoverSpecificationVo CoverSpecificationvo)
	{
		List ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from CoverSpecificationVo");
			ls=q.list();
			tr.commit();
		}
		catch(Exception e)
		{			
		}
		return ls;
	}
	public void deleteCoverSpecification(CoverSpecificationVo CoverSpecificationvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(CoverSpecificationvo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List editCoverSpecification(CoverSpecificationVo CoverSpecificationvo)
	{
		List ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from CoverSpecificationVo where CoverSpecificationId='"+CoverSpecificationvo.getCoverSpecificationId()+"'");
			ls=q.list();
			tr.commit();
		}
		catch(Exception e)
		{			
		}
		return ls;
	}
	public void updateCoverSpecification(CoverSpecificationVo CoverSpecificationvo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(CoverSpecificationvo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}


