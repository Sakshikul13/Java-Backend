package com.pu.repositories;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.pu.entities.CourseDetails;
public class Course_detailsDao {
    JdbcTemplate template;
     public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    public int save(CourseDetails courseDetails) {
        String sql = "INSERT INTO Course_Details(detail_id, course_code, instructor, credit, type) VALUES (?, ?, ?, ?, ?)";
        return template.update(sql, courseDetails.getDetailId(), courseDetails.getCourseCode(),
                courseDetails.getInstructor(), courseDetails.getCredit(), courseDetails.getType());
    }
    public int update(CourseDetails courseDetails) {
        String sql = "UPDATE Course_Details SET course_code=?, instructor=?, credit=?, type=? WHERE detail_id=?";
        return template.update(sql, courseDetails.getCourseCode(), courseDetails.getInstructor(),
                courseDetails.getCredit(), courseDetails.getType(), courseDetails.getDetailId());
    }
     public int delete(int detailId) {
        String sql = "DELETE FROM Course_Details WHERE detail_id=?";
        return template.update(sql, detailId);
    }

    public CourseDetails getCourseDetailsById(int detailId) {
        String sql = "SELECT * FROM Course_Details WHERE detail_id=?";
        return template.queryForObject(sql, new Object[]{detailId}, new BeanPropertyRowMapper<CourseDetails>(CourseDetails.class));
    }

    public List<CourseDetails> getAllCourseDetails() {
        return template.query("SELECT * FROM Course_Details", new RowMapper<CourseDetails>() {
            public CourseDetails mapRow(ResultSet rs, int row) throws SQLException {
                CourseDetails courseDetails = new CourseDetails();
                courseDetails.setDetailId(rs.getInt("detail_id"));
                courseDetails.setCourseCode(rs.getString("course_code"));
                courseDetails.setInstructor(rs.getString("instructor"));
                courseDetails.setCredit(rs.getInt("credit"));
                courseDetails.setType(rs.getString("type"));
                return courseDetails;
            }
        });
    }
}
