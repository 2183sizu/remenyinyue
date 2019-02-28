package dao.Impl;

import dao.BaseDao;
import dao.MvXinxiDao;
import entity.MvXinxi;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-26.
 */
public class MvXinxiDaoImpl extends BaseDao implements MvXinxiDao {
    @Override
    public List<MvXinxi> select() {
        List<MvXinxi> list=new ArrayList<>();
        conn=getConn();
        String sql="select FengmianID,FengmianUrl,MVUrl,MVtitle,MVtype from mvxinxi";
        try {
            pata=conn.prepareStatement(sql);
            rs=pata.executeQuery();
            while(rs.next()){
                MvXinxi mvXinxi=new MvXinxi();
                mvXinxi.setFengmianid(rs.getInt("FengmianID"));
                mvXinxi.setFengmianurl(rs.getString("FengmianUrl"));
                mvXinxi.setMvurl(rs.getString("MVUrl"));
                mvXinxi.setMvtitle(rs.getString("MVtitle"));
                mvXinxi.setMvtype(rs.getString("MVtype"));
                list.add(mvXinxi);
            }
         } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public List<MvXinxi> selecttype(String mvtype) {
        List<MvXinxi> list=new ArrayList<>();
        conn=getConn();
        String sql="select FengmianID,FengmianUrl,MVUrl,MVtitle,MVtype from mvxinxi where MVtype=?";
        try {
            pata=conn.prepareStatement(sql);
            pata.setString(1,mvtype);
            rs=pata.executeQuery();
            while(rs.next()){
                MvXinxi mvXinxi=new MvXinxi();
                mvXinxi.setFengmianid(rs.getInt("FengmianID"));
                mvXinxi.setFengmianurl(rs.getString("FengmianUrl"));
                mvXinxi.setMvurl(rs.getString("MVUrl"));
                mvXinxi.setMvtitle(rs.getString("MVtitle"));
                mvXinxi.setMvtype(rs.getString("MVtype"));
                list.add(mvXinxi);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public int add(MvXinxi mvXinxi) {
        String sql="insert into mvxinxi(FengmianUrl,MVUrl,MVtitle,Mvtype)values(?,?,?,?)";
        Object [] objs={
            mvXinxi.getFengmianurl(),
                mvXinxi.getMvurl(),
                mvXinxi.getMvtitle(),
                mvXinxi.getMvtype()
        };
        return executeUpdate(sql,objs);
    }

    @Override
    public int delete(int fengmianid) {
        conn=getConn();
        String sql="delete from mvxinxi where fengmianid=?";
        Object[] objs={
                fengmianid
        };
        return executeUpdate(sql,objs);
    }

    @Override
    public int update(MvXinxi mvXinxi) {
        conn=getConn();
        String sql="update mvxinxi set FengmianUrl=?,MVUrl=?,MVtitle=?,mvtype=? where FengmianID=?";
        Object[] objs={
                mvXinxi.getFengmianurl(),
                mvXinxi.getMvurl(),
                mvXinxi.getMvtitle(),
                mvXinxi.getMvtype(),
                mvXinxi.getFengmianid()

        };
        return executeUpdate(sql,objs);

    }
}
