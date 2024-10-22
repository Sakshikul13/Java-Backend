package com.pu.entities;

import java.util.Date;
import java.util.Objects;

public class Enrollment {
    private int enrollmentId;
    private int studentId;
    private String courseCode;
    private String detailId;
    private String studentName;

    

	@Override
	public String toString() {
		return "Enrollment [enrollmentId=" + enrollmentId + ", studentId=" + studentId + ", courseCode=" + courseCode
				+ ", detailId=" + detailId + ", studentName=" + studentName + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(courseCode, detailId, enrollmentId, studentId, studentName);
	}



	// Getters and Setters
    public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	
    public int getEnrollmentId() {
        return enrollmentId;
    }

    public void setEnrollmentId(int enrollmentId) {
        this.enrollmentId = enrollmentId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

	public String getDetailId() {
		return detailId;
	}

	public void setDetailId(String detailId) {
		this.detailId = detailId;
	}



}
