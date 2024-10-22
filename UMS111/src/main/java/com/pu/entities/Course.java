package com.pu.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Course")
public class Course {
    @Id
    @Column(name = "course_code", length = 50)
    private String courseCode;

    @Column(name = "course_name", length = 100)
    private String courseName;

    @Column(name = "department_id")
    private int departmentId;

    public Course() {
        // Default constructor
    }

    public Course(String courseCode, String courseName, int departmentId) {
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.departmentId = departmentId;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    @Override
    public String toString() {
        return "Course [courseCode=" + courseCode + ", courseName=" + courseName + ", departmentId=" + departmentId + "]";
    }
}
