package com.bits.springcrud.service.impl;

import com.bits.springcrud.dto.StudentCourseView;
import com.bits.springcrud.model.Student;
import com.bits.springcrud.repository.StudentRepository;
import com.bits.springcrud.service.StudentService;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {

  private final StudentRepository studentRepository;

  public StudentServiceImpl(StudentRepository studentRepository) {
    this.studentRepository = studentRepository;
  }

  @Override
  public List<Student> findAll() {
    return studentRepository.findAll();
  }

  @Override
  public Student findById(Long id) {
    return studentRepository
        .findById(id)
        .orElseThrow(() -> new IllegalArgumentException("Student not found for id: " + id));
  }

  @Override
  public Student save(Student student) {
    return studentRepository.save(student);
  }

  @Override
  public List<StudentCourseView> fetchJoinedStudentCourseData() {
    return studentRepository.fetchStudentCourseDetails();
  }
}
