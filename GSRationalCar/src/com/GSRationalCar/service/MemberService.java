package com.GSRationalCar.service;

import com.GSRationalCar.dao.MemberDAO;
import com.GSRationalCar.vo.MemberVO;

public class MemberService {
	
	private static MemberService service = new MemberService();
	public MemberDAO dao = MemberDAO.getInstance();
	
	private MemberService() {}
	public static MemberService getInstance() {
		return service;
	}
	public void memberInsert(MemberVO member) {
		dao.memberInsert(member);
		
	}
	
	public MemberVO memberLogin(String id) {
		MemberVO member = dao.memberLogin(id);
		return member;
	}
}
	