package entity;

/**
 * Created by 钟家龙 on 2019-02-21.
 */
public class UserXinXi {
    private int userid;
    private String username;
    private String password;
    private int musiclikeid;
    private String sex;
    private String phone;
    private String address;
    private int age;

    @Override
    public String toString() {
        return "UserXinXi{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", musiclikeid=" + musiclikeid +
                ", sex='" + sex + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", age=" + age +
                '}';
    }

    public UserXinXi() {
    }

    public UserXinXi(int userid, String username, String password, int musiclikeid, String sex, String phone, String address, int age) {

        this.userid = userid;
        this.username = username;
        this.password = password;
        this.musiclikeid = musiclikeid;
        this.sex = sex;
        this.phone = phone;
        this.address = address;
        this.age = age;
    }

    public int getUserid() {

        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getMusiclikeid() {
        return musiclikeid;
    }

    public void setMusiclikeid(int musiclikeid) {
        this.musiclikeid = musiclikeid;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
