package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.CountryVo;
@Repository
public class CountryDao {


		@Autowired
		SessionFactory sf;

		public void insertcountry(CountryVo countryvo)
		{
			try 
			{
				Session session = sf.openSession();
				Transaction tr = session.beginTransaction();
				session.save(countryvo);
				tr.commit();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
		public List searchcountry(CountryVo countryvo)
		{
			List ls=new ArrayList();
			try
			{
				Session session=sf.openSession();
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from CountryVo");
				ls=q.list();
				tr.commit();
			}
			catch(Exception e)
			{			
			}
			return ls;
		}
		public void deletecountry(CountryVo countryvo)
		{
			try 
			{
				Session session = sf.openSession();
				Transaction tr = session.beginTransaction();
				session.delete(countryvo);
				tr.commit();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
		public List editcountry(CountryVo CountryVo)
		{
			List ls=new ArrayList();
			try
			{
				Session session=sf.openSession();
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from CountryVo where countryId='"+CountryVo.getCountryId()+"'");
				ls=q.list();
				tr.commit();
			}
			catch(Exception e)
			{			
			}
			return ls;
		}
		public void updatecountry(CountryVo CountryVo)
		{
			try 
			{
				Session session = sf.openSession();
				Transaction tr = session.beginTransaction();
				session.saveOrUpdate(CountryVo);
				tr.commit();
			} 
			catch (Exception e) 
			{
				e.printStackTrace();
			}
		}
	}


