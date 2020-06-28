package com.hr.manage;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hr.dao.EASYBUY_COMMENTDao;
import com.hr.entity.EASYBUY_COMMENT;

public class ChaManage extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
 		ArrayList<EASYBUY_COMMENT> list = EASYBUY_COMMENTDao.selectAll();
 		//�İ���
 	 	req.setAttribute("list", list);
 		//ת��
 	 	req.getRequestDispatcher("guestbook.jsp").forward(req,resp);
 	}
}
