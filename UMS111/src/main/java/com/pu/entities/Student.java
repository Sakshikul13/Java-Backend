package com.pu.entities;

import javax.persistence.*;

@Entity
@Table(name = "student")
public class Student {
  
  @Id
    @Column(name ="student_id", length = 11)
   private int studentId;
 
    @Column(name = "student_name", length = 100)
    private String studentName;
    
    @Column(name = "email", length = 100)
    private String email;

public Student(int studentId, String studentName, String email) {
    super();
    this.studentId = studentId;
    this.studentName = studentName;
    this.email = email;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public Student() {
        // Default constructor
    }

    public int getstudentId() {
        return studentId;
    }

    public void setstudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getstudentName() {
        return studentName;
    }

    public void setstudentName(String studentName) {
        this.studentName = studentName;
    }

    @Override
  public String toString() {
    return "Student [studentId=" + studentId + ", studentName=" + studentName + ", email=" + email + "]";
  }
}