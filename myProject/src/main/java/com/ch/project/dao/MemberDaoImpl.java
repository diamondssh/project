package com.ch.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.project.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Member member) {

		return sst.insert("memberns.insert", member);
	}

	@Override
	public Member select(String id) {
		System.out.println("id:"+id);
		return sst.selectOne("memberns.select", id);
	}

	@Override
	public Member memselect(String id) {

		return sst.selectOne("memberns.select", id);
	}

	@Override
	public int update(Member member) {

		return sst.update("memberns.update", member);
	}

	@Override
	public int delete(String id) {

		return sst.delete("memberns.delete", id);
	}

	@Override
	public int total(Member member) {

		return sst.selectOne("memberns.total", member);
	}

	@Override
	public List<Member> getList(Member member) {

		return sst.selectList("memberns.list", member);
	}

}
