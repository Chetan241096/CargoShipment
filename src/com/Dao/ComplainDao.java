package com.Dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Vo.ComplainVo;

@Repository
public class ComplainDao {

	@Autowired
	SessionFactory sf;

	public void insertComplain(ComplainVo complainVo) {
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			session.save(complainVo);
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List viewComplain(ComplainVo complainVo) {
		List ls = new ArrayList();
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplainVo");
			ls = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}

	public void replyComplain(ComplainVo complainVo) {
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery(
					" Update ComplainVo set complainReplyDescription='" + complainVo.getComplainReplyDescription()
							+ "', complainStatus='replied' where complainId='" + complainVo.getComplainId() + "' ");
			q.executeUpdate();
			tr.commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List editComplain(ComplainVo complainVo) {
		List ls = new ArrayList();
		try {
			Session session = sf.openSession();
			Transaction tr = session.beginTransaction();
			Query q = session.createQuery("from ComplainVo where complainId='" + complainVo.getComplainId() + "'");
			ls = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ls;
	}
}