package servlect;

import dao.Impl.MusicXinXiDaoImpl;
import dao.MusicXInXiDao;
import entity.MusicXinXi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
@WebServlet(name = "Index",urlPatterns = "/index")
public class Index extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        MusicXinXi musicXinXi=new MusicXinXi();
        MusicXInXiDao musicXInXiDao=new MusicXinXiDaoImpl();
        List<MusicXinXi> list=musicXInXiDao.select();
        String type=request.getParameter("type");
        if(type.equals("denglu")){
            response.sendRedirect("login.jsp");
        }





    }
}
