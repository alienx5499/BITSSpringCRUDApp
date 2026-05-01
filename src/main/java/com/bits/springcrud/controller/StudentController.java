package com.bits.springcrud.controller;

import com.bits.springcrud.model.Student;
import com.bits.springcrud.service.CourseService;
import com.bits.springcrud.service.StudentService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/students")
public class StudentController {

  private final StudentService studentService;
  private final CourseService courseService;

  public StudentController(StudentService studentService, CourseService courseService) {
    this.studentService = studentService;
    this.courseService = courseService;
  }

  @GetMapping
  public String listStudents(Model model) {
    model.addAttribute("students", studentService.findAll());
    model.addAttribute("joinedRows", studentService.fetchJoinedStudentCourseData());
    return "student-list";
  }

  @GetMapping("/new")
  public String newStudentForm(Model model) {
    model.addAttribute("student", new Student());
    model.addAttribute("courses", courseService.findAll());
    return "student-form";
  }

  @PostMapping
  public String createStudent(
      @Valid @ModelAttribute("student") Student student, BindingResult bindingResult, Model model) {
    if (bindingResult.hasErrors()) {
      model.addAttribute("courses", courseService.findAll());
      return "student-form";
    }
    studentService.save(student);
    return "redirect:/students";
  }

  @GetMapping("/edit/{id}")
  public String editStudentForm(@PathVariable Long id, Model model) {
    model.addAttribute("student", studentService.findById(id));
    model.addAttribute("courses", courseService.findAll());
    return "student-form";
  }
}
