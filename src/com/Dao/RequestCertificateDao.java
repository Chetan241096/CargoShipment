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
import com.Vo.RequestCertificateVo;

@Repository
public class RequestCertificateDao {
	
	@Autowired
	SessionFactory sf;
	
	}
