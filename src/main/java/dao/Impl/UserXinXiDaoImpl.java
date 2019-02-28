package dao.Impl;

import dao.BaseDao;
import dao.UserXinXiDao;
import entity.UserXinXi;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-26.
 */
public class UserXinXiDaoImpl extends BaseDao implements UserXinXiDao{
    @Override
    public List<UserXinXi> select() {
        List<UserXinXi> list=new ArrayList<>();
        conn=getConn();
        String sql="select username,password,musiclikeid,sex,phone,address,age from userxinxi";
        try {
            pata=conn.prepareStatement(sql);
            rs=pata.executeQuery();
            while(rs.next()){
               UserXinXi userXinXi=new UserXinXi();
                userXinXi.setUsername(rs.getString("username"));
                userXinXi.setPassword(rs.getString("password"));
                userXinXi.setMusiclikeid(rs.getInt("musiclikeid"));
                userXinXi.setSex(rs.getString("sex"));
                userXinXi.setPhone(rs.getString("phone"));
                userXinXi.setAddress(rs.getString("address"));
                userXinXi.setAge(rs.getInt("age"));
                list.add(userXinXi);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public List<UserXinXi> selectname(String username) {
        List<UserXinXi> list=new ArrayList<>();
        conn=getConn();
        String sql="select username,password,musiclikeid,sex,phone,address,age from userxinxi where username=?";
        try {
            pata=conn.prepareStatement(sql);
            pata.setString(1,username);
            rs=pata.executeQuery();
            while(rs.next()){
                UserXinXi userXinXi=new UserXinXi();
                userXinXi.setUsername(rs.getString("username"));
                userXinXi.setPassword(rs.getString("password"));
                userXinXi.setMusiclikeid(rs.getInt("musiclikeid"));
                userXinXi.setSex(rs.getString("sex"));
                userXinXi.setPhone(rs.getString("phone"));
                userXinXi.setAddress(rs.getString("address"));
                userXinXi.setAge(rs.getInt("age"));
                list.add(userXinXi);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public int update(UserXinXi userxinxi) {
        conn=getConn();
        String sql="update userxinxi set username=?,password=?,sex=?,phone=?,address=?,age=?";
        Object[] objs={
                userxinxi.getUsername(),
                userxinxi.getPassword(),
                userxinxi.getSex(),
                userxinxi.getPhone(),
                userxinxi.getAddress(),
                userxinxi.getAge()
        };
        return executeUpdate(sql,objs);
    }

    @Override
    public int add(UserXinXi userxinxi) {
        String sql="insert into userxinxi (username,password,sex,phone,address,age)values(?,?,?,?,?,?)";
        Object [] objs={
                userxinxi.getUsername(),
                userxinxi.getPassword(),
                userxinxi.getSex(),
                userxinxi.getPhone(),
                userxinxi.getAddress(),
                userxinxi.getAge()

        };
        return executeUpdate(sql,objs);

    }

    @Override
    public int user(String username) {
        int c=0;
        conn=getConn();
        String sql="select count(0) from userxinxi where userName=?";
        try {
            pata=conn.prepareStatement(sql);
            rs=pata.executeQuery();
            if(rs.next()){
                c=rs.getInt("r");

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return c;
    }


}
