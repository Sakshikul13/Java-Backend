package com.pu.controller;

import com.pu.entities.CourseDetails;
import com.pu.repositories.Course_detailsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class CourseDetailsController {

    @Autowired
    private Course_detailsDao courseDetailsDao;

    @GetMapping("/courseDetails")
    public String getAllCourseDetails(Model model) {
        List<CourseDetails> list = courseDetailsDao.getAllCourseDetails();
        model.addAttribute("list", list);
        return "courseDetails"; // Assuming you have a JSP named "courseDetails.jsp" to display the details
    }

    @GetMapping("/addCourseDetailsForm")
    public String showAddCourseDetailsForm(Model model) {
        model.addAttribute("courseDetails", new CourseDetails());
        return "addCourseDetails"; // Assuming you have a JSP named "addCourseDetails.jsp" for adding new course details
    }

    @PostMapping("/addCourseDetails")
    public String addCourseDetails(@ModelAttribute("courseDetails") CourseDetails courseDetails) {
        courseDetailsDao.save(courseDetails);
        return "redirect:/courseDetails"; // Redirect to the courseDetails page after adding
    }

    @GetMapping("/editCourseDetails")
    public String showEditCourseDetailsForm(@RequestParam("detailId") int detailId, Model model) {
        CourseDetails courseDetails = courseDetailsDao.getCourseDetailsById(detailId);
        model.addAttribute("courseDetails", courseDetails);
        return "editCourseDetails"; // Assuming you have a JSP named "editCourseDetails.jsp" for editing course details
    }

    @PostMapping("/editCourseDetails")
    public String editCourseDetails(@ModelAttribute("courseDetails") CourseDetails courseDetails) {
        courseDetailsDao.update(courseDetails);
        return "redirect:/courseDetails"; // Redirect to the courseDetails page after editing
    }

    @GetMapping("/deleteCourseDetails")
    public String deleteCourseDetails(@RequestParam("detailId") int detailId) {
        courseDetailsDao.delete(detailId);
        return "redirect:/courseDetails"; // Redirect to the courseDetails page after deleting
    }
}
