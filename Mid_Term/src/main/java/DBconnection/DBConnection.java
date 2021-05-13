package DBconnection;

import exception.RequestException;

import java.sql.*;
import java.util.Properties;

public class DBConnection {
    private String URL = "jdbc:postgresql://localhost:5432/EE";
    private String USERNAME = "postgres";
    private String PASSWORD = "1234";

    private static Connection connection;

    public void open() throws Exception{
        Class.forName("org.postgresql.Driver");
        this.connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public void doInit() {
        try {
            open();
        } catch (Exception e) {
            System.out.println("Connection failed!");
            System.out.println(e);
            throw new RequestException("Oops, cannot get all music with custom exception");
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
            throw new RequestException("Oops, cannot get all music with custom exception");
        }
    }

    public ResultSet getMusic(){
        ResultSet resultSet = null;
        doInit();
        try {
            PreparedStatement a = connection.prepareStatement("SELECT *FROM musics");
            resultSet = a.executeQuery();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.toString());
            System.out.println(e.getCause());
            throw new RequestException("Oops, cannot get all music with custom exception");
        }
        return resultSet;
    }

    public ResultSet getUsers(){
        ResultSet resultSet = null;
        doInit();
        try {
            PreparedStatement a = connection.prepareStatement("SELECT *FROM users");
            resultSet = a.executeQuery();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.toString());
            System.out.println(e.getCause());
            throw new RequestException("Oops, cannot get all music with custom exception");
        }
        return resultSet;
    }

    public void deleteMusic(String name){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM musics WHERE name=?");

            preparedStatement.setString(1, name);

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void addMusic(Long id, String name, int year, String min){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO musics VALUES (?, ?, ?, ?)");

            preparedStatement.setLong(1, id);
            preparedStatement.setString(2, name);
            preparedStatement.setInt(3, year);
            preparedStatement.setString(4, min);

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void deleteUser(String name){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM users WHERE name=?");

            preparedStatement.setString(1, name);

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void addUser(Long id, String name, String pass, String subs, String type){
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users VALUES (?, ?, ?, ?, ?)");

            preparedStatement.setLong(1, id);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, pass);
            preparedStatement.setString(4, subs);
            preparedStatement.setString(5, type);

            preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
