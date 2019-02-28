package dao;

import entity.UserXinXi;

import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-26.
 */
public interface UserXinXiDao {
    //查看个人信息
    List<UserXinXi> select();
    //根据用户名查询个人信息
    List<UserXinXi> selectname(String username);
    //修改个人信息
    int update(UserXinXi userxinxi);
    //增加个人信息
    int add(UserXinXi userxinxi);
    //查询用户是否存在
    int user(String username);


}
