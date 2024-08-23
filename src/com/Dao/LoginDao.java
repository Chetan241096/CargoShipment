package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.LoginVo;

@Repository

public class LoginDao {

	@Autowired
	SessionFactory sf;
	public void insertlogin(LoginVo loginVo)
	{
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.save(loginVo);
			tr.commit();
		}
		catch(Exception e)
		{
			
		}
		
	}
	
	public List viewlogin(LoginVo loginVo)
	{
		List ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from LoginVo");
			ls=q.list();
			tr.commit();
		}
		catch(Exception e)
		{
			
		}
		return ls;
		
	}
	

	public int getLoginId(LoginVo loginVo)
	{
		List<LoginVo> ls=new ArrayList();
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			Query q=session.createQuery("from LoginVo where username='"+loginVo.getUsername()+"'");
			ls=q.list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ls.get(0).getId();
	}


}
