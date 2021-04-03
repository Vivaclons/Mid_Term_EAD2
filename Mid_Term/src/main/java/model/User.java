package model;

public class User {
    private String name;
    private String password;
    private String subscribe;

    public User() {
    }

    public User(String name, String password, String subscribe) {
        this.name = name;
        this.password = password;
        this.subscribe = subscribe;
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

    public String isSubscribe() {
        return subscribe;
    }

    public void setSubscribe(String subscribe) {
        this.subscribe = subscribe;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                ", password=" + password +
                ", subscribe=" + subscribe +
                '}';
    }

}
