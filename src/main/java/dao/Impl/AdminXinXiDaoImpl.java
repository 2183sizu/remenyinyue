package dao.Impl;

import dao.AdminXinXiDao;
import dao.BaseDao;
import entity.Adminxinxi;

import java.sql.SQLException;

/**
 * Created by 钟家龙 on 2019-02-23.
 */
public class AdminXinXiDaoImpl extends BaseDao implements AdminXinXiDao {
    @Override
    public int admin(Adminxinxi adminxinxi) {
        conn=getConn();
        int count=0;
        String sql="select  * from adminxinxi where admin=? and Password=?";
        try {
            pata=conn.prepareStatement(sql);
            pata.setString(1,adminxinxi.getAdmin());
            pata.setString(2,adminxinxi.getPassword());
            rs=pata.executeQuery();
            while(rs.next()){
                count=rs.getInt("r");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return count;
    }

    @Override
    public int add(Adminxinxi adminxinxi) {
        String sql="insert into adminxinxi(admin,Password)VALUES(?,?)";
        Object [] objs={
                        adminxinxi.getAdmin(),
                        adminxinxi.getPassword()
                    };
        return executeUpdate(sql,objs);
    }
}
