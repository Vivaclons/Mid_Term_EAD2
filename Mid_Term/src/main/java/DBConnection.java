import model.Music;
import model.User;

import java.sql.*;
import java.util.ArrayList;

public class DBConnection {

    private String URL = "jdbc:postgresql://localhost:5432/ForMusic";

    private String USERNAME = "postgres";

    private String PASSWORD = "1234";

    private static Connection connection;

    public void open() throws Exception{
        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public void doInit() {
        try {
            open();
        } catch (Exception ex) {
            System.out.println("Connection failed!");
            System.out.println(ex);
        }
    }

    public void close() throws Exception{
        connection.close();
    }

    public void doDestroy() {
        try {
            close();
        } catch (Exception ex) {
            System.out.println("Connection failed!");
            System.out.println(ex);
        }
    }

    public ArrayList<User> users() {
        ArrayList<User> users = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            String SQL = "SELECT * FROM user";
            ResultSet resultSet = statement.executeQuery(SQL);

            while (resultSet.next()) {
                User user = new User();
                user.setName(resultSet.getString("user_name"));
                user.setPassword(resultSet.getString("password"));
                user.setSubscribe(resultSet.getString("subscribe"));

                users.add(user);
                System.out.println(users);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }


    public ArrayList<Music> musics() {
        ArrayList<Music> musics = new ArrayList<>();

        try {
            Statement statement = connection.createStatement();
            String SQL = "SELECT * FROM user";
            ResultSet resultSet = statement.executeQuery(SQL);

            while (resultSet.next()) {
                Music music = new Music();
                music.setName(resultSet.getString("music"));
                music.setYearOfPublish(resultSet.getInt("yearOfPublish"));
                music.setMin(resultSet.getString("min"));

                musics.add(music);
                System.out.println(musics);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return musics;
    }

    public ResultSet getUsers(){
        ResultSet resultSet = null;
        try {
            PreparedStatement a = connection.prepareStatement("SELECT * FROM user");
            resultSet = a.executeQuery();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
        return resultSet;

    }
}
