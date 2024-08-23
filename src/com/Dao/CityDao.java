package com.Dao;

import java.util.ArrayList;
import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.CityVo;
import com.Vo.StateVo;

@Repository
public class CityDao {
		@Autowired
		SessionFactory sf;
		public void insertcity(CityVo cityvo)
		{
			try{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.save(cityvo);
			tr.commit();
			}
			catch(Exception e)
			{}
		}
		public List searchcity(CityVo cityvo)
		{
			List ls=new ArrayList();
			try
			{
				Session session=sf.openSession();
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from CityVo");
				ls=q.list();
			}
			catch(Exception e)
			{
				
			}
			return ls;
		}
		public void deletecity(CityVo cityvo)
		{
			try{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.delete(cityvo);
			tr.commit();
			}
			catch(Exception e)
			{}
		}
		public List editcity(CityVo cityvo)
		{
			List ls=new ArrayList();
			try
			{
				Session session=sf.openSession();
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from CityVo where cityId='"+cityvo.getCityId()+"'");
				ls=q.list();
			}
			catch(Exception e)
			{
				
			}
			return ls;
		}
		public void updatecity(CityVo cityvo)
		{
			try{
			Session session=sf.openSession();
			Transaction tr=session.beginTransaction();
			session.saveOrUpdate(cityvo);
			tr.commit();
			}
			catch(Exception e)
			{}
		}
	
		public List SearchCityAjax2(CityVo cityVo) {

			List cityList = new ArrayList();
			try 
			{
				Session session1 = sf.openSession();
				Transaction tr=session1.beginTransaction();
				System.err.println("from CityVo where statevo='" + cityVo.getStatevo().getStateId() + "'");
				Query search = session1.createQuery("from CityVo where statevo='" + cityVo.getStatevo().getStateId() + "'");
				cityList = search.list();
				tr.commit();
			} 
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return cityList;

		}

}
