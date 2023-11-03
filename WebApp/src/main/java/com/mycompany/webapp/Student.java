package com.mycompany.webapp;

/**
 *
 * @author Joat
 */
public abstract class Student {
    
    protected String id, name, course;
    protected double mark = 0;
    
    public Student(String idIn, String nameIn, String courseIn, Double markIn) {
        this.id = idIn;
        this.name = nameIn;
        this.course = courseIn;
        this.mark = markIn;
    }
    
    public String toString() {
        return "Id: " + this.id + ", Name: " + this.name + ", Course: " + this.course + ", Mark: " + this.mark;
    }
    
    public String getId() {
        return this.id;
    }
    
    public String getName() {
        return this.name;
    }
    
    public String getCourse() {
        return this.course;
    }
    
    public Double getMark() {
        return this.mark;
    }
    
    public void setMark(double newMark) {
        if(newMark < 0 || newMark > 100) {
            System.out.println("Mark is invalid, cannot add mark.");
        }
        else {
            this.mark = newMark;
        }
    }
    
    public abstract String getGrade();
    
    public boolean didPass() {
        if(this.mark >= 40) {
            return true;
        }
        else {
            return false;
        }
    }
}