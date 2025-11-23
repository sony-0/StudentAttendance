package com.attendance;

import java.util.ArrayList;
import java.util.List;

public class StudentDatabase {

    private static List<Student> studentList = new ArrayList<>();

    public static void addStudent(Student s) {
        studentList.add(s);
    }

    public static List<Student> getStudents() {
        return studentList;
    }
    


}
