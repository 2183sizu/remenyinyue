package servlect;

import dao.Impl.MusicXinXiDaoImpl;
import dao.MusicXInXiDao;
import entity.MusicXinXi;
import entity.Page;
import service.FenyeService;
import service.Impl.FenyeServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
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
        String type=request.getParameter("type");

        if (type==null||type=="sel"){
            //select(request,response);
            selByPage(request,response);
        }else {
            switch (type){
                case "selBypage":
                    selByPage(request,response);
                    break;
                case "ss":
                    bofang(request,response);
                    break;
            }

        }
    }
    public void select(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        MusicXInXiDao musicXInXiDao=new MusicXinXiDaoImpl();
        List<MusicXinXi> list=musicXInXiDao.selecttype("古风");
        request.getSession().setAttribute("list",list);
        List<MusicXinXi> lists=musicXInXiDao.selecttype("怀旧");
        request.getSession().setAttribute("lists",lists);
        List<MusicXinXi> listl=musicXInXiDao.selecttype("流行");
        request.getSession().setAttribute("listl",listl);
        response.sendRedirect("index.jsp");
    }
    public void selByPage (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        FenyeService fenyeService=new FenyeServiceImpl();
        //当前页数
        /*String name=request.getParameter("name");*/
        String pageindex= request.getParameter("pageIndex");

        //如果为空，说明是第一次访问，默认给1
        if(pageindex==null){
            pageindex="1";
        }
        int ye=Integer.valueOf(pageindex);
        Page page=new Page();
        page.setCurrPageNo(ye);//当前页码
        page.setPageSize(2);//每页显示的条数
        fenyeService.findPageTopic(page,"古风");//查询类别信息
        //Page对象存储到session
        request.getSession().setAttribute("p",page);
        response.sendRedirect("index.jsp");
    }
    public void bofang (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        MusicXinXi musicXinXi = new MusicXinXi();
        String xx = request.getParameter("music");
        MusicXInXiDao musicXInXiDao = new MusicXinXiDaoImpl();
        List<MusicXinXi> list = musicXInXiDao.selectname(xx);
        for (MusicXinXi x : list) {
            System.out.println(x.getMusicurl());
        }
        StringBuilder newJSON = new StringBuilder("");
        for (MusicXinXi x : list) {
            newJSON.append("{\"title\": \"" + x.getMusicname() + "\",\"artist\":\"" + x.getSinger() + "\",\"mp3\":\"yinyue/" + x.getMusicurl() + "\"},");
        }
        String str = newJSON.toString();
        str = str.substring(0, str.length()-1);
        PrintWriter out = response.getWriter();
        out.write(str);
        out.flush();
        out.close();
    }
}

