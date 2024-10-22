package com.pu.controller;

import com.pu.entities.Enrollment;
import com.pu.repositories.EnrollmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class EnrollmentController {

    @Autowired
    private EnrollmentDao EnrollmentDao;

    @GetMapping("/enrollments")
    public String getEnrollments(Model model) {
        model.addAttribute("enrollments", EnrollmentDao.getAllEnrollments());
        return "enrollmentList";
    }

    @GetMapping("/addEnrollment")
    public String showAddEnrollmentForm(Model model) {
        model.addAttribute("enrollment", new Enrollment());
        return "addEnrollment";
    }

    @PostMapping("/addEnrollment")
    public String addEnrollment(@ModelAttribute("enrollment") Enrollment enrollment) {
        EnrollmentDao.save(enrollment);
        return "redirect:/enrollments";
    }

    @GetMapping("/editenrollment")
    public String showEditEnrollmentForm(@RequestParam("enrollmentId") int enrollmentId, Model model) {
        Enrollment enrollment = EnrollmentDao.getEnrollmentById(enrollmentId);
        model.addAttribute("enrollment", enrollment);
        return "editEnrollment";
    }

    @PostMapping("/editenrollment")
    public String editEnrollment(@ModelAttribute("enrollment") Enrollment enrollment) {
        EnrollmentDao.update(enrollment);
        return "redirect:/enrollments";
    }

    @GetMapping("/deleteenrollment")
    public String deleteEnrollment(@RequestParam("enrollmentId") int enrollmentId) {
        EnrollmentDao.delete(enrollmentId);
        return "redirect:/enrollments";
    }

    @GetMapping("/fetchEnrollment")
    public String fetchEnrollmentById(@RequestParam("enrollmentId") int enrollmentId, Model model) {
        Enrollment enrollment = EnrollmentDao.getEnrollmentById(enrollmentId);
        if (enrollment != null) {
            model.addAttribute("enrollment", enrollment);
        } else {
            model.addAttribute("errorMessage", "Enrollment not found with ID: " + enrollmentId);
        }
        return "fetchEnrollmentById"; // Return the name of the JSP file
    }
}
