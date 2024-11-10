package com.user.servlet;

import com.DAO.BookDAOimpl;
import com.DB.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/delete_old_book")
public class DeleteOldBook  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String email = req.getParameter("email");
            BookDAOimpl dao=new BookDAOimpl(DBConnect.getConn());

            boolean f=dao.oldBookDelete(email,"Old");
            HttpSession session=req.getSession();

            if (f){
                session.setAttribute("succMsg","Old Book Delete Sucessfully");
                resp.sendRedirect("old_book.jsp");
            } else{
                session.setAttribute("failedMsg","Something Went Wrong");
                resp.sendRedirect("old_book.jsp");

            }


        } catch (Exception e){

        }
    }
}
