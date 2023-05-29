package com.example.demo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String savepass = request.getParameter("savepass");

        if (username.equals("admin") && password.equals("1234")){
            HttpSession ss = request.getSession(true);
            ss.setAttribute("username",username);
            if(savepass != null){
                Cookie cUsername = new Cookie("username",username);
                Cookie cPassword = new Cookie("password",password);
                response.addCookie(cUsername);
                response.addCookie(cPassword);
            }else{
                Cookie cUsername = new Cookie("username","");
                Cookie cPassword = new Cookie("password","");
                response.addCookie(cUsername);
                response.addCookie(cPassword);
            }
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }else{
            request.setAttribute("err","Login fail");
            request.getRequestDispatcher("loginform.jsp").forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
