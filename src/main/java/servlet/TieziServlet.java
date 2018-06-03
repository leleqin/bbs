package servlet;

import entity.Tiezi;
import jdk.nashorn.internal.parser.JSONParser;
import net.sf.json.JSONArray;
import service.impl.TieziServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TieziServlet",urlPatterns = "/tieziServlet")
public class TieziServlet extends HttpServlet {
    TieziServiceImpl tieziService = new TieziServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String method = request.getParameter("method");
        if (method.equals("tieziShow")){
            tieziShow(request,response);
        }
    }

    /**
     * 所有帖子展示页
     * @param request
     * @param response
     * @throws IOException
     */
    public void tieziShow(HttpServletRequest request,HttpServletResponse response) throws IOException {
        List<Tiezi> tieziList = tieziService.tieziShow();
        if (tieziList != null) {
            JSONArray jsonArray = JSONArray.fromObject(tieziList);
            response.getWriter().print(jsonArray);
        }
    }

    /**
     * 单个帖子
     * @param request
     * @param response
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-type","text/html;charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("id"));
        Tiezi tiezi = new Tiezi();
        tiezi.setTid(id);
        List<Tiezi> tieziList = tieziService.TieziSingleShow(tiezi);
        if (tieziList != null) {
            JSONArray jsonArray = JSONArray.fromObject(tieziList);
            response.getWriter().print(jsonArray);
        }

    }
}
