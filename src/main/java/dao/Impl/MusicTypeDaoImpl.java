package dao.Impl;

import dao.BaseDao;
import dao.MusciTypeDao;
import entity.MusicType;

/**
 * Created by 钟家龙 on 2019-02-26.
 */
public class MusicTypeDaoImpl extends BaseDao implements MusciTypeDao {
    @Override
    public int add(MusicType musicType) {
        String sql="insert into musictype(typename)values(?)";
        Object [] objs={
            musicType.getTypename()
        };
        return executeUpdate(sql,objs);
    }

    @Override
    public int update(MusicType musicType) {
        conn=getConn();
        String sql="update musictype set typename=? where typeid=?";
        Object[] objs={
                musicType.getTypeid(),
                musicType.getTypename()
        };
        return executeUpdate(sql,objs);
    }

    @Override
    public int delete(int typeid) {
        conn=getConn();
        String sql="delete from musictype where TypeId=?";
        Object[] objs={
                typeid
        };
        return executeUpdate(sql,objs);
    }
}
