package com.pu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pu.entities.Course;
import com.pu.repositories.CourseDao;

@Controller
public class CourseController {

    @Autowired
    private CourseDao courseDao;

    @GetMapping("/courses")
    public String getCourses(Model model) {
        model.addAttribute("courses", courseDao.getCourses());
        return "courseList";
    }

    @GetMapping("/addCourse")
    public String showAddCourseForm(Model model) {
        model.addAttribute("course", new Course());
        return "addCourse";
    }

    @PostMapping("/addCourse")
    public String addCourse(@ModelAttribute("course") Course course) {
        courseDao.save(course);
        return "redirect:/courses";
    }

    @GetMapping("/editCourse")
    public String showEditCourseForm(@RequestParam("courseCode") String courseCode, Model model) {
        Course course = courseDao.getCourseByCode(courseCode);
        model.addAttribute("course", course);
        return "editCourse";
    }

    @PostMapping("/editCourse")
    public String editCourse(@ModelAttribute("course") Course course) {
        courseDao.update(course);
        return "redirect:/courses";
    }

    @GetMapping("/deleteCourse")
    public String deleteCourse(@RequestParam("courseCode") String courseCode) {
        courseDao.delete(courseCode);
        return "redirect:/courses";
    }
    @GetMapping("/fetchCourse")
    public String fetchCourseByCode(@RequestParam("courseCode") String courseCode, Model model) {
        Course course = courseDao.getCourseByCode(courseCode);
        if (course != null) {
            model.addAttribute("course", course);
        } else {
            model.addAttribute("errorMessage", "Course not found with code: " + courseCode);
        }
        return "FetchCourseByCode"; // Return the name of the JSP file
    }


}
