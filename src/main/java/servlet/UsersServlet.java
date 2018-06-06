package servlet;

import entity.Users;
import net.sf.json.JSONArray;
import service.impl.UsersServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UsersServlet",urlPatterns = "/usersServlet")
public class UsersServlet extends HttpServlet {
    UsersServiceImpl usersService = new UsersServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if (method.equals("usersManager")){
            usersManager(request,response);
        }else if (method.equals("editUser")){
            editUser(request,response);
        }else if (method.equals("deleteUser")){
            deleteUser(request,response);
        }else if (method.equals("addUser")){
            addUser(request,response);
        }
    }

    public void addUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
        Users users = new Users();
        users.setUname(request.getParameter("uname"));
        users.setUpwd(request.getParameter("upwd"));
        users.setUemail(request.getParameter("uinfo"));
        usersService.addUser(users);
        response.sendRedirect(request.getContextPath()+"/admin/userManager.html");
    }
    /**
     * 删除用户
     * @param request
     * @param response
     * @throws IOException
     */
    public void deleteUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
        int uid = Integer.parseInt(request.getParameter("id"));
        usersService.deleteUser(uid);
        response.sendRedirect(request.getContextPath()+"/admin/userManager.html");
    }
    /**
     * 更新管理员信息
     * @param request
     * @param response
     * @throws IOException
     */
    public void editUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
        Users users = new Users();
        users.setUid(Integer.parseInt(request.getParameter("u_id")));
        users.setUname(request.getParameter("u_username"));
        users.setUpwd(request.getParameter("u_pwd"));
        users.setUemail(request.getParameter("u_info"));
        usersService.updateUser(users);
        response.sendRedirect(request.getContextPath()+"/admin/userManager.html");

    }

    /**
     * 所有用户
     * @param request
     * @param response
     */
    public void usersManager(HttpServletRequest request,HttpServletResponse response) throws IOException {
        List<Users> usersList = usersService.usersManager();
        if (usersList!=null){
            JSONArray jsonArray = JSONArray.fromObject(usersList);
            response.getWriter().print(jsonArray);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<Users> usersList = usersService.editUser(id);
        if (usersList!=null){
            JSONArray jsonArray = JSONArray.fromObject(usersList);
            response.getWriter().print(jsonArray);
        }
    }
}
