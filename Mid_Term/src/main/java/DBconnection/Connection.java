package DBconnection;

import exception.RequestException;
import model.Music;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Connection {
    private String URL = "jdbc:postgresql://localhost:5432/EndTerm";
    private String USERNAME = "postgres";
    private String PASSWORD = "1234";

    private static java.sql.Connection connection;

    public void open() throws Exception{
        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public void doInit() {
        try {
            open();
        } catch (Exception ex) {
            System.out.println("Connection failed!");
            System.out.println(ex);
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
        ArrayList<Music> musics = new ArrayList<>();
        try {
            PreparedStatement a = connection.prepareStatement("SELECT * FROM music");
            resultSet = a.executeQuery();
        }
        catch (NullPointerException | SQLException e){
            System.out.println(e.getMessage());
            throw new RequestException("Oops, cannot get all music with custom exception");
        }
        return resultSet;
    }
}
