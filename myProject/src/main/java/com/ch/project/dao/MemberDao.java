package com.ch.project.dao;

import java.util.List;

import com.ch.project.model.Member;

public interface MemberDao {

	int insert(Member member);

	Member select(String id);

	Member memselect(String id);

	int update(Member member);

	int delete(String id);

	int total(Member member);

	List<Member> getList(Member member);

}
