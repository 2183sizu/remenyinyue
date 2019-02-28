package dao.Impl;

import dao.BaseDao;
import dao.MusicXInXiDao;
import entity.MusicType;
import entity.MusicXinXi;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-23.
 */
public class MusicXinXiDaoImpl extends BaseDao implements MusicXInXiDao {
    @Override
    public List<MusicXinXi> select() {
        List<MusicXinXi> list=new ArrayList<>();
        conn=getConn();
        String sql="select  MusicName,Singer,MusicUrl,typename from musicxinxi a\n" +
                "inner join musictype b  on a.typeId=b.typeId";
         try {
            pata=conn.prepareStatement(sql);
            rs=pata.executeQuery();
             while(rs.next()){
                 MusicXinXi musicXinXi=new MusicXinXi();
                 MusicType musicType=new MusicType();
                 musicType.setTypename(rs.getString("typename"));
                 musicXinXi.setMusicname(rs.getString("MusicName"));
                 musicXinXi.setSinger(rs.getString("Singer"));
                 musicXinXi.setMusicurl(rs.getString("MusicUrl"));
                 musicXinXi.setName(musicType);
                list.add(musicXinXi);
             }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
             close();
         }
        return list;
    }

    @Override
    public List<MusicXinXi> selectname(String musicname) {
        List<MusicXinXi> list=new ArrayList<>();
        conn=getConn();
        String sql="select  MusicName,Singer,MusicUrl,typename from musicxinxi a\n" +
                "inner join musictype b  on a.typeId=b.typeId" +
                " where MusicName like %?% ";
        try {
            pata=conn.prepareStatement(sql);
            pata.setString(1,musicname);
            rs=pata.executeQuery();
            while(rs.next()){
                MusicXinXi musicXinXi=new MusicXinXi();
                MusicType musicType=new MusicType();
                musicType.setTypename(rs.getString("typename"));
                musicXinXi.setMusicname(rs.getString("MusicName"));
                musicXinXi.setSinger(rs.getString("Singer"));
                musicXinXi.setMusicurl(rs.getString("MusicUrl"));
                musicXinXi.setName(musicType);
                list.add(musicXinXi);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
     }

    @Override
    public List<MusicXinXi> selecttype(String musictype) {
        List<MusicXinXi> list=new ArrayList<>();
        conn=getConn();
        String sql="select  MusicName,Singer,MusicUrl,typename from musicxinxi a\n" +
                "inner join musictype b  on a.typeId=b.typeId\n" +
                "where typename = ? ";
        try {
            pata=conn.prepareStatement(sql);
            pata.setString(1,musictype);
            rs=pata.executeQuery();
            while(rs.next()){
                MusicXinXi musicXinXi=new MusicXinXi();
                MusicType musicType=new MusicType();
                musicType.setTypename(rs.getString("typename"));
                musicXinXi.setMusicname(rs.getString("MusicName"));
                musicXinXi.setSinger(rs.getString("Singer"));
                musicXinXi.setMusicurl(rs.getString("MusicUrl"));
                musicXinXi.setName(musicType);
                list.add(musicXinXi);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public List<MusicXinXi> selectgeshou(String musicgeshou) {
        List<MusicXinXi> list=new ArrayList<>();
        conn=getConn();
        String sql="select  MusicName,Singer,MusicUrl,typename from musicxinxi a" +
                "inner join musictype b  on a.typeId=b.typeId" +
                " where Singer like %?%";
        try {
            pata=conn.prepareStatement(sql);
            pata.setString(1,musicgeshou);
            rs=pata.executeQuery();
            while(rs.next()){
                MusicXinXi musicXinXi=new MusicXinXi();
                MusicType musicType=new MusicType();
                musicType.setTypename(rs.getString("typename"));
                musicXinXi.setMusicname(rs.getString("MusicName"));
                musicXinXi.setSinger(rs.getString("Singer"));
                musicXinXi.setMusicurl(rs.getString("MusicUrl"));
                musicXinXi.setName(musicType);
                list.add(musicXinXi);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public int add(MusicXinXi musicXinXi) {
        String sql="insert into musicxinxi(MusicName,singer,MusicUrl,TypeId)VALUES(?,?,?,?)";
        Object [] objs={
                musicXinXi.getMusicname(),
                musicXinXi.getSinger(),
                musicXinXi.getMusicurl(),
                musicXinXi.getTypeid()
        };
        return executeUpdate(sql,objs);
        }

    @Override
    public int update(MusicXinXi musicXinXi) {
       conn=getConn();
       String sql="update musicxinxi set MusicName=?,singer=?,musicurl=?,TypeId=? where MusicId=?";
       Object[] objs={
            musicXinXi.getMusicname(),
               musicXinXi.getSinger(),
               musicXinXi.getMusicurl(),
               musicXinXi.getTypeid()
       };
        return executeUpdate(sql,objs);
    }

    @Override
    public int delete(int musicid) {
        conn=getConn();
        String sql="delete from musicxinxi where MusicId=?";
        Object[] objs={
          musicid
        };
        return executeUpdate(sql,objs);
    }
}
