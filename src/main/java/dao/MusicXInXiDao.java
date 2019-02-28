package dao;

import entity.MusicXinXi;

import java.util.List;

/**
 * Created by 钟家龙 on 2019-02-23.
 */
public interface MusicXInXiDao  {
    //查询全部歌曲
    List<MusicXinXi> select();
    //根据歌名查询
    List<MusicXinXi> selectname(String musicname);
    //根据类型查询
    List<MusicXinXi> selecttype(String musictype);
    //根据歌手查询
    List<MusicXinXi> selectgeshou(String musicgeshou);
    //向表内添加歌曲
    int add(MusicXinXi musicXinXi);
    //修改歌曲信息
    int update(MusicXinXi musicXinXi);
    //删除歌曲
    int delete(int musicid);

}
