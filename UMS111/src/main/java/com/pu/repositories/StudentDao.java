package com.pu.repositories;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.pu.entities.Student;

public class StudentDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(Student student) {
        String sql = "INSERT INTO Student(student_id, student_name, email) VALUES (?, ?, ?)";
        return template.update(sql, student.getstudentId(), student.getstudentName(), student.getEmail());
    }

    public int update(Student student) {
        String sql = "UPDATE Student SET student_name=?, email=? WHERE student_id=?";
        return template.update(sql, student.getstudentName(), student.getEmail(), student.getstudentId());
    }

    public int delete(int studentId) {
        String sql = "DELETE FROM Student WHERE student_id=?";
        return template.update(sql, studentId);
    }

    public Student getStudentById(int studentId) {
        String sql = "SELECT * FROM Student WHERE student_id=?";
        return template.queryForObject(sql, new Object[]{studentId}, new BeanPropertyRowMapper<Student>(Student.class));
    }

    public List<Student> getAllStudents() {
        return template.query("SELECT * FROM Student", new RowMapper<Student>() {
            public Student mapRow(ResultSet rs, int row) throws SQLException {
                Student student = new Student();
                student.setstudentId(rs.getInt("student_id"));
                student.setstudentName(rs.getString("student_name"));
                student.setEmail(rs.getString("email"));
                return student;
            }
        });
    }
}
