package model;

public class Music {
    private String name;
    private int yearOfPublish;
    private String min;

    public Music() {
    }

    public Music(String name, int yearOfPublish, String min) {
        this.name = name;
        this.yearOfPublish = yearOfPublish;
        this.min = min;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYearOfPublish() {
        return yearOfPublish;
    }

    public void setYearOfPublish(int yearOfPublish) {
        this.yearOfPublish = yearOfPublish;
    }

    public String getMin() {
        return min;
    }

    public void setMin(String min) {
        this.min = min;
    }

    @Override
    public String toString() {
        return "Music{" +
                "name='" + name + '\'' +
                ", yearOfPublish=" + yearOfPublish +
                ", min=" + min +
                '}';
    }
}
