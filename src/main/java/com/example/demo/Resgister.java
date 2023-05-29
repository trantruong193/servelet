package com.example.demo;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "Resgister", value = "/Resgister")
public class Resgister extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String stuid = request.getParameter("stuid");
        String fullname = request.getParameter("fullname");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        Date birthday = null;
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            birthday = sf.parse(request.getParameter("birthday"));
        }catch (ParseException e){
            e.printStackTrace();
        }
        String address = request.getParameter("address");
        String classname = request.getParameter("classname");
        String[] hobbies = request.getParameterValues("hobbies");
        String hobbie = "";
        for (String h : hobbies){
            hobbie += (h + ",");
        }
        hobbie = hobbie.substring(0,hobbie.length()-1);

        request.setAttribute("stuid",stuid);
        request.setAttribute("fullname",fullname);
        request.setAttribute("gender",gender);
        request.setAttribute("birthday",birthday);
        request.setAttribute("address",address);
        request.setAttribute("classname",classname);
        request.setAttribute("hobbie",hobbie);

        request.getRequestDispatcher("viewStudent.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
