package com.bits.springcrud.service.impl;

import com.bits.springcrud.model.Course;
import com.bits.springcrud.repository.CourseRepository;
import com.bits.springcrud.service.CourseService;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CourseServiceImpl implements CourseService {

  private final CourseRepository courseRepository;

  public CourseServiceImpl(CourseRepository courseRepository) {
    this.courseRepository = courseRepository;
  }

  @Override
  public List<Course> findAll() {
    return courseRepository.findAll();
  }

  @Override
  public Course findById(Long id) {
    return courseRepository
        .findById(id)
        .orElseThrow(() -> new IllegalArgumentException("Course not found for id: " + id));
  }

  @Override
  public Course save(Course course) {
    return courseRepository.save(course);
  }
}
