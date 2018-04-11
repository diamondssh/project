package com.ch.project.dao;

import com.ch.project.model.Member;

public interface MemberDao {
	int insert(Member mb);
	Member select(Member member);
}
