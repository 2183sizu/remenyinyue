package service.Impl;

import dao.Impl.MusicXinXiDaoImpl;
import dao.MusicXInXiDao;
import entity.MusicXinXi;
import entity.Page;
import service.FenyeService;

import java.util.List;

/**
 * Created by 钟家龙 on 2019-04-02.
 */
public class FenyeServiceImpl implements FenyeService {
    MusicXInXiDao musicXInXiDao=new MusicXinXiDaoImpl();


    @Override
    public void findPageTopic(Page page,String name) {
        //得到总条数
        int totalcount= musicXInXiDao.count(name);
        //给page对象中的总条数赋值
        page.setTotalCount(totalcount);
        //调用查询方法，参数当前页码和每页显示的条数
        List<MusicXinXi> list=
                musicXInXiDao.getMusicXinXiList(page.getCurrPageNo(),page.getPageSize(),name);
        System.out.println(list.toString());
        //给Page对象中的集合属性赋值
        page.setMusiclist(list);
    }
}
