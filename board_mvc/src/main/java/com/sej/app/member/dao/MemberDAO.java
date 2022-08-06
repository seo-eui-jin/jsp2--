package com.sej.app.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sej.app.mybatis.config.MyBatisConfig;

public class MemberDAO {
	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	 public MemberDAO() {
	sqlSession = sessionFactory.openSession(true);
	}

	 
	 //아이디 검사
	 public boolean checkId(String memberId) {
		return(Integer)(sqlSession.selectOne("Member.checkId", memberId)) ==1;
	 }
}
