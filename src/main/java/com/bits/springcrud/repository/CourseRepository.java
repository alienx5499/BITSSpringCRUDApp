package com.bits.springcrud.repository;

import com.bits.springcrud.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository extends JpaRepository<Course, Long> {}
