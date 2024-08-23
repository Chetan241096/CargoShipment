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

@Repository
public class StateDao {
	@Autowired
	SessionFactory sf;

	public void insertstate(StateVo statevo) {
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(statevo);
			tr.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List searchstate(StateVo statevo) {
		List ls = new ArrayList();
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from StateVo");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {

		}
		return ls;
	}

	public void deletestate(StateVo statevo) {
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.delete(statevo);
			tr.commit();
		} catch (Exception e) {

		}
	}

	public List editstate(StateVo statevo) {
		List ls = new ArrayList();
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from StateVo where stateId='" + statevo.getStateId() + "'");
			ls = q.list();
			tr.commit();
		} catch (Exception e) {

		}
		return ls;
	}

	public void updatestate(StateVo statevo) {
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(statevo);
			tr.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List SearchCityAjax(StateVo statevo) {

		List cityList = new ArrayList();
		try {
			Session session1 = sf.openSession();
			System.err.println("from StateVo where countryvo='" + statevo.getCountryvo().getCountryId() + "'");
			Query search = session1
					.createQuery("from StateVo where countryvo='" + statevo.getCountryvo().getCountryId() + "'");
			cityList = search.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cityList;

	}

	}
