package entity;

import java.io.Serializable;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
public class MusicType implements Serializable {
    private int typeid;
    private String typename;

    public MusicType() {
    }

    @Override
    public String toString() {
        return "MusicType{" +
                "typeid=" + typeid +
                ", typename='" + typename + '\'' +
                '}';
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public MusicType(int typeid, String typename) {

        this.typeid = typeid;
        this.typename = typename;
    }
}
