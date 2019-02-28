package dao;

import entity.Adminxinxi;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
public interface AdminXinXiDao {
    //查询数据库中是否有该条管理员数据
    int admin(Adminxinxi adminxinxi);
    //向管理员表中增加一条数据
    int add(Adminxinxi adminxinxi);




 }
