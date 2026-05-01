package com.bits.springcrud.controller;

import com.bits.springcrud.model.Course;
import com.bits.springcrud.service.CourseService;
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
@RequestMapping("/courses")
public class CourseController {

  private final CourseService courseService;

  public CourseController(CourseService courseService) {
    this.courseService = courseService;
  }

  @GetMapping
  public String listCourses(Model model) {
    model.addAttribute("courses", courseService.findAll());
    return "course-list";
  }

  @GetMapping("/new")
  public String newCourseForm(Model model) {
    model.addAttribute("course", new Course());
    return "course-form";
  }

  @PostMapping
  public String createCourse(
      @Valid @ModelAttribute("course") Course course, BindingResult bindingResult) {
    if (bindingResult.hasErrors()) {
      return "course-form";
    }
    courseService.save(course);
    return "redirect:/courses";
  }

  @GetMapping("/edit/{id}")
  public String editCourseForm(@PathVariable Long id, Model model) {
    model.addAttribute("course", courseService.findById(id));
    return "course-form";
  }
}
