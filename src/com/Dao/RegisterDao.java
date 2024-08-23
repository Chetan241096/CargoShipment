package com.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.Vo.RegisterVo;

@Repository
public class RegisterDao {

	
	@Autowired
	SessionFactory sf;
	
	public void insertregister(RegisterVo registerVo)
	{
		try
		{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.save(registerVo);
			tr.commit();
		}
		catch(Exception e)
		{
			
		}
		
	}

}
