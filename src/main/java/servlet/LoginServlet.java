package servlet;

import entity.Users;
import service.impl.LoginServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "LoginServlet",urlPatterns = "/loginServlet")
public class LoginServlet extends HttpServlet {
    LoginServiceImpl loginService = new LoginServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if (method.equals("loginUser")){
            loginUser(request,response);
        }

    }
    protected void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String username = request.getParameter("userName");
        String password = request.getParameter("pwd");
        Users users = new Users();
        users.setUname(username);
        users.setUpwd(password);
        List<Users> list = loginService.login(users);
        if (list!=null){
            HttpSession session = request.getSession();
            session.setAttribute("userInfo",list);
            response.getWriter().print("ok");
        }else {
            response.getWriter().print("no");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(111);
    }
}
