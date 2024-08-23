package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.FeedbackVo;
@Repository

public class FeedbackDao {
			
	@Autowired
	SessionFactory sf;
	
	
	public void insertfeedback(FeedbackVo feedbackVo)
	{
		try 
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(feedbackVo);
			tr.commit();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public List viewfeedback(FeedbackVo feedbackVo)
	{
		List ls=new ArrayList();
		try
		{
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from FeedbackVo");
			ls=q.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls;
	}
}
