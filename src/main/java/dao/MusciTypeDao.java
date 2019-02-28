package dao;

import entity.MusicType;

/**
 * Created by 钟家龙 on 2019-02-26.
 */
public interface MusciTypeDao {
    //增加歌曲类别
    int add(MusicType musicType);
    //修改歌曲类别
    int update(MusicType musicType);
    //删除歌曲类别
    int delete(int typeid);



}
