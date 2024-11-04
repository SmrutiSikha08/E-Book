package com.user.servlet;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int bid=Integer.parseInt(req.getParameter("bid"));
        int uid=Integer.parseInt(req.getParameter("uid"));

        CartDAOImpl dao=new CartDAOImpl(DBConnect.getConn());
        boolean f=dao.deleteBook(bid,uid);
        HttpSession session=req.getSession();

        if (f){
            session.setAttribute("succMsg","Book Removed From Cart");
            resp.sendRedirect("checkout.jsp");
        } else{
            session.setAttribute("failedMsg","Something Went Wrong");
            resp.sendRedirect("checkout.jsp");

        }


    }
}
