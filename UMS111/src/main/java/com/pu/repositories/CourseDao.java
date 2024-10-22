package com.pu.repositories;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.pu.entities.Course;

public class CourseDao {
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    public int save(Course course) {
        String sql = "INSERT INTO course(course_code, course_name) VALUES (?, ?)";
        return template.update(sql, course.getCourseCode(), course.getCourseName());
    }

    public int update(Course course) {
        String sql = "UPDATE course SET course_name=? WHERE course_code=?";
        return template.update(sql, course.getCourseName(),course.getCourseCode());
    }

    public int delete(String courseCode) {
        String sql = "DELETE FROM course WHERE course_code=?";
        return template.update(sql, courseCode);
    }

    public Course getCourseByCode(String courseCode) {
        String sql = "SELECT * FROM course WHERE course_code=?";
        return template.queryForObject(sql, new Object[]{courseCode}, new BeanPropertyRowMapper<>(Course.class));
    }
    
    public List<Course> getCourses() {
        return template.query("SELECT * FROM course", new RowMapper<Course>() {
            public Course mapRow(ResultSet rs, int row) throws SQLException {
                Course course = new Course();
                course.setCourseCode(rs.getString("course_code"));
                course.setCourseName(rs.getString("course_name"));
                return course;
            }
        });
    }
}
