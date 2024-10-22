package com.pu.repositories;

import com.pu.entities.Enrollment;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class EnrollmentDao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(Enrollment enrollment) {
        String sql = "INSERT INTO enrollment(student_id, student_name,course_code, detail_id) VALUES (?, ?, ?,?)";
        return template.update(sql, enrollment.getStudentId(), enrollment.getStudentName(),enrollment.getCourseCode(), enrollment.getDetailId());
    }

    public int update(Enrollment enrollment) {
        String sql = "UPDATE enrollment SET student_id=?,student_name=? , course_code=?, detail_id=? WHERE enrollment_id=?";
        return template.update(sql, enrollment.getStudentId(), enrollment.getStudentName(),enrollment.getCourseCode(), enrollment.getDetailId(),enrollment.getEnrollmentId());
    }

    public int delete(int enrollmentId) {
        String sql = "DELETE FROM enrollment WHERE enrollment_id=?";
        return template.update(sql, enrollmentId);
    }

    public Enrollment getEnrollmentById(int enrollmentId) {
        String sql = "SELECT * FROM enrollment WHERE enrollment_id=?";
        return template.queryForObject(sql, new Object[]{enrollmentId}, new BeanPropertyRowMapper<Enrollment>(Enrollment.class));
    }

    public List<Enrollment> getAllEnrollments() {
        return template.query("SELECT * FROM enrollment", new RowMapper<Enrollment>() {
            public Enrollment mapRow(ResultSet rs, int row) throws SQLException {
                Enrollment enrollment = new Enrollment();
                enrollment.setEnrollmentId(rs.getInt("enrollment_id"));
                enrollment.setStudentId(rs.getInt("student_id"));
                enrollment.setStudentName(rs.getString("student_name"));
                enrollment.setCourseCode(rs.getString("course_code"));
                enrollment.setDetailId(rs.getString("detail_id"));
                return enrollment;
            }
        });
    }
}

