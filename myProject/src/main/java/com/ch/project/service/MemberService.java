package com.ch.project.service;

import com.ch.project.model.Member;

public interface MemberService {
	int insert(Member mb);
	Member select(Member member);
}
