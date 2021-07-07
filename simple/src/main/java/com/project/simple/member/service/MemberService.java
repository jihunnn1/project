package com.project.simple.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.project.simple.member.vo.MemberVO;

public interface MemberService{
	public List listMembers() throws DataAccessException;
	public int addMember(MemberVO memberVO) throws DataAccessException;
	
	public int addMember_naver(MemberVO memberVO) throws DataAccessException;
	
	public int modMember(MemberVO modmember) throws DataAccessException;
	
	public int removeMember(MemberVO removemember) throws DataAccessException;
	
	public MemberVO login(MemberVO memberVO) throws Exception;

	public MemberVO login_naver(MemberVO memberVO) throws Exception;
	
}