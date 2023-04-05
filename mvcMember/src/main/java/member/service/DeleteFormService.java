package member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.control.CommandProcess;

public class DeleteFormService implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		// 데이터
		String pwd = request.getParameter("pwd"); // 넘어온 데이터
		System.out.println("pwd = " + pwd); // 맨 처음에는 pwd가 null
		
		// 세션
		String id = (String)session.getAttribute("memId");
		String memPwd = (String)session.getAttribute("memPwd");
		
		// DB
	 	boolean exist = false;
		if(pwd != null) { // 이거 할려고 deleteForm의 액션을 재귀했다.
			// MemberDAO memberDAO = MemberDAO.getInstance();
			// exist = memberDAO.isExistPwd(id, pwd); // pwd가 존재하는가?
					
			if(memPwd.equals(pwd)) exist = true;
		}
		
		if(exist)
			return "/member/deleteForm.jsp";
	}

}
