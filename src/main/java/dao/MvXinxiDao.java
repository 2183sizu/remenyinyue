package dao;

import entity.MvXinxi;

import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-26.
 */
public interface MvXinxiDao {
    //查询MV信息
    List<MvXinxi> select();
    //根据类型查询MV信息
    List<MvXinxi> selecttype(String mvtype);
    //增加mv
    int add(MvXinxi mvXinxi);
    //删除mv
    int delete(int fengmianid);
    //修改MV信息
    int update(MvXinxi mvXinxi);

}
