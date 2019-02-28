package entity;

import java.io.Serializable;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
public class Adminxinxi implements Serializable{
    private String admin;
    private String password;

    @Override
    public String toString() {
        return "Adminxinxi{" +
                "admin='" + admin + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public String getAdmin() {
        return admin;
    }

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Adminxinxi() {

    }

    public Adminxinxi(String admin, String password) {

        this.admin = admin;
        this.password = password;
    }
}
