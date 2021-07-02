package com.project.simple.member.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;

import com.project.simple.member.vo.MemberVO;

public interface MemberDAO{
	public List selectAllMemberList() throws DataAccessException;
	public int insertMember(MemberVO memberVO) throws DataAccessException;
	public int deleteMember(MemberVO removemember) throws DataAccessException;
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
}