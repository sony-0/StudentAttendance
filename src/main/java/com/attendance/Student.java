package com.attendance;

public class Student {
    private String name;
    private String roll;
    private String status;

    public Student(String name, String roll, String status) {
        this.name = name;
        this.roll = roll;
        this.status = status;
    }

    public String getName() { return name; }
    public String getRoll() { return roll; }
    public String getStatus() { return status; }
}
