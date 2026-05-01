package com.bits.springcrud.service;

import com.bits.springcrud.dto.StudentCourseView;
import com.bits.springcrud.model.Student;
import java.util.List;

public interface StudentService {
  List<Student> findAll();

  Student findById(Long id);

  Student save(Student student);

  List<StudentCourseView> fetchJoinedStudentCourseData();
}
