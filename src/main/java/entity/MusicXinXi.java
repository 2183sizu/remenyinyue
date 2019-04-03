package entity;

import java.io.Serializable;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
public class MusicXinXi implements Serializable {
    private int musicid;
    private String musicname;
    private String singer;
    private String musicurl;
    private int typeid;
    private String typename;

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public MusicType getName() {
        return name;
    }

    public void setName(MusicType name) {
        this.name = name;
    }

    private  MusicType name;

    @Override
    public String toString() {
        return "MusicXinXi{" +
                "musicid=" + musicid +
                ", musicname='" + musicname + '\'' +
                ", singer='" + singer + '\'' +
                ", musicurl='" + musicurl + '\'' +
                ", typeid=" + typeid +
                '}';
    }

    public MusicXinXi() {
    }

    public int getMusicid() {

        return musicid;
    }

    public void setMusicid(int musicid) {
        this.musicid = musicid;
    }

    public String getMusicname() {
        return musicname;
    }

    public void setMusicname(String musicname) {
        this.musicname = musicname;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getMusicurl() {
        return musicurl;
    }

    public void setMusicurl(String musicurl) {
        this.musicurl = musicurl;
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public MusicXinXi(int musicid, String musicname, String singer, String musicurl, int typeid) {
        this.musicid = musicid;
        this.musicname = musicname;
        this.singer = singer;
        this.musicurl = musicurl;
        this.typeid = typeid;
    }




}
