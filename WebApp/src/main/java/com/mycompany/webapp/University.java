package com.mycompany.webapp;

import java.util.ArrayList;

/**
 *
 * @author Joat
 */
public class University {
    private ArrayList<Student> students = new ArrayList<Student>();
    
    public University () {
        
    }
    
    public void enrolStudent(Student s) {
        students.add(s);
    }
    
    public Student getAllStudents() {
        for(Student allStudents : students) {
            return allStudents;
        }
        return null;
    }
    
    public Student findStudentById(String searchId) {
        for(Student currentStudent : students) {
            if(currentStudent.getId().equals(searchId)) {
                return currentStudent;
            }
        }
        return null;
    }
    
    public ArrayList<Student> findStudentByName(String searchName) {
        for(Student currentStudent : students) {
            if(currentStudent.getName().equals(searchName)) {
                students.add(currentStudent);
                return students;
            }
        }
        return null;
    }
}