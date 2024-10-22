package com.pu.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Course_Details")
public class CourseDetails {

    @Id
    @Column(name ="detail_id", length = 11)
    private int detailId;

    @Column(name = "course_code", length = 50)
    private String courseCode;

    @Column(name = "instructor", length = 100)
    private String instructor;

    @Column(name = "credit")
    private int credit;

    @Column(name = "type", length = 50)
    private String type;

    public CourseDetails() {
        // Default constructor
    }

    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "CourseDetails [detailId=" + detailId + ", courseCode=" + courseCode +
                ", instructor=" + instructor + ", credit=" + credit + ", type=" + type + "]";
    }
}
