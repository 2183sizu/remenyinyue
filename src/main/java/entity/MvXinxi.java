package entity;

import java.io.Serializable;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
public class MvXinxi implements Serializable {
    @Override
    public String toString() {
        return "MvXinxi{" +
                "fengmianid=" + fengmianid +
                ", fengmianurl='" + fengmianurl + '\'' +
                ", mvurl='" + mvurl + '\'' +
                ", mvtitle='" + mvtitle + '\'' +
                ", mvtype='" + mvtype + '\'' +
                '}';
    }

    public int getFengmianid() {
        return fengmianid;
    }

    public void setFengmianid(int fengmianid) {
        this.fengmianid = fengmianid;
    }

    public String getFengmianurl() {
        return fengmianurl;
    }

    public void setFengmianurl(String fengmianurl) {
        this.fengmianurl = fengmianurl;
    }

    public String getMvurl() {
        return mvurl;
    }

    public void setMvurl(String mvurl) {
        this.mvurl = mvurl;
    }

    public String getMvtitle() {
        return mvtitle;
    }

    public void setMvtitle(String mvtitle) {
        this.mvtitle = mvtitle;
    }

    public String getMvtype() {
        return mvtype;
    }

    public void setMvtype(String mvtype) {
        this.mvtype = mvtype;
    }

    public MvXinxi() {

    }

    public MvXinxi(int fengmianid, String fengmianurl, String mvurl, String mvtitle, String mvtype) {

        this.fengmianid = fengmianid;
        this.fengmianurl = fengmianurl;
        this.mvurl = mvurl;
        this.mvtitle = mvtitle;
        this.mvtype = mvtype;
    }

    private int fengmianid;
    private String fengmianurl;
    private String mvurl;
    private String mvtitle;
    private String mvtype;


}
