package com.ezen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MemberDAO;
import com.ezen.dto.MemberVO;

/**
 * Servlet implementation class MemberUpdateServlet
 */
@WebServlet("/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		MemberDAO mDao=MemberDAO.getInstance();
		
		MemberVO mVo=mDao.getMember(id);
		request.setAttribute("mVo",mVo);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("member/memberUpdate.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");//한글깨짐방지
		//폼에서 입력한 회원정보 얻어오기
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String admin=request.getParameter("admin");
		//회원 정보를 저장할 객체 생성
		MemberVO mVo=new MemberVO();
		mVo.setId(id);
		mVo.setPwd(pwd);
		mVo.setPhone(phone);
		mVo.setEmail(email);
		mVo.setGender(Integer.parseInt(gender));
		mVo.setAge(age);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao=MemberDAO.getInstance();
		mDao.updateMember(mVo);
		response.sendRedirect("login.do");
	}

}
