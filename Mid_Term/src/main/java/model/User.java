package model;

public class User {
    private int iD;
    private String name;
    private String password;
    private String subscribe;
    private String type;

    public User() {
    }

    public User(int iD, String name, String password, String subscribe, String type) {
        this.iD = iD;
        this.name = name;
        this.password = password;
        this.subscribe = subscribe;
        this.type = type;
    }

    public int getiD() {
        return iD;
    }

    public void setiD(int iD) {
        this.iD = iD;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSubscribe() {
        return subscribe;
    }

    public void setSubscribe(String subscribe) {
        this.subscribe = subscribe;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "User{" +
                "iD=" + iD +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", subscribe='" + subscribe + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
