package com.ch.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	@Autowired
	private SqlSessionTemplate sst;
	public int insert(Member mb) {
		return sst.insert("memberns.insert", mb);
	}
	public Member select(Member member) {
		return sst.selectOne("memberns.selectId", member);
	}

}
