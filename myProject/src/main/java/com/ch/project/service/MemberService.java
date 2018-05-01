package com.ch.project.service;

import java.util.List;

import com.ch.project.model.Member;

public interface MemberService {

	int insert(Member member);

	Member select(String id);

	Member memselect(String id);

	int update(Member member);

	int delete(String id);

	int total(Member member);

	List<Member> getList(Member member);

}
