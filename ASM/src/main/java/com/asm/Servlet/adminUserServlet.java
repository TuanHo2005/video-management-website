package com.asm.Servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import com.asm.Dao.UserDao;
import com.asm.Entity.User;

import Daoimpl.UserDaoimpl;


@WebServlet({
"/user/crud/index",
"/user/crud/edit/*",
"/user/crud/update",
"/user/crud/create",
"/user/crud/delete",
"/user/crud/reset"
})
public class adminUserServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDao dao = new UserDaoimpl();		
		User form = new User();
		try {
			BeanUtils.populate(form, req.getParameterMap());
			
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
	
		String path = req.getServletPath();
		
		if(path.contains("edit")) {
			form = dao.findById(req.getPathInfo().substring(1));
		}else if (path.contains("create")) {
			dao.create(form);
		}else if(path.contains("update")) {
			dao.update(form);
		}else if (path.contains("delete")) {
			String id = req.getParameter("id");
			System.out.println(id);
			dao.deleteById(id);
		}else if (path.contains("reset")) {
			form = new User();
		}
		List<User> list = dao.findAll();
	
		req.setAttribute("user", form);
		req.setAttribute("users", list);
		req.setAttribute("view", "/views/admin/Users/user.jsp");
		req.getRequestDispatcher("/views/admin/home/home.jsp").forward(req, resp);
	}
}
