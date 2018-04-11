package com.ch.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.project.dao.MemberDao;
import com.ch.project.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao md;
	public int insert(Member mb) {
		return md.insert(mb);
	}
	public Member select(Member member) {
		return md.select(member);
	}
}
