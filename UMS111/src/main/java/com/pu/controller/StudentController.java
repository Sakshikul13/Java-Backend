package com.pu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pu.entities.Student;
import com.pu.repositories.StudentDao;

@Controller
public class StudentController {

    @Autowired
    private StudentDao studentDao; // Change to camelCase

    @GetMapping("/students") // Ensure endpoint is in lowercase
    public String getStudents(Model model) {
        model.addAttribute("students", studentDao.getAllStudents()); // Use camelCase
        return "StudentList";
    }

    @GetMapping("/addStudent")
    public String showAddStudentForm(Model model) {
        model.addAttribute("student", new Student()); // Use camelCase
        return "addStudent";
    }

    @PostMapping("/addStudent")
    public String addStudent(@ModelAttribute("student") Student student) {
        studentDao.save(student);
        return "redirect:/students";
    }

    @GetMapping("/editstudent")
    public String showEditStudentForm(@RequestParam("studentId") int studentId, Model model) {
        Student student = studentDao.getStudentById(studentId);
        model.addAttribute("student", student); // Use camelCase
        return "editStudent";
    }

    @PostMapping("/editStudent")
    public String editStudent(@ModelAttribute("student") Student student) {
        studentDao.update(student);
        return "redirect:/students";
    }

    @GetMapping("/deletestudent")
    public String deleteStudent(@RequestParam("studentId") int studentId) {
        studentDao.delete(studentId);
        return "redirect:/students";
    }
}
