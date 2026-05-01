package com.bits.springcrud.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.bits.springcrud.dto.StudentCourseView;
import com.bits.springcrud.model.Student;
import com.bits.springcrud.repository.StudentRepository;
import com.bits.springcrud.service.impl.StudentServiceImpl;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

@ExtendWith(MockitoExtension.class)
class StudentServiceTest {

  @Mock private StudentRepository studentRepository;

  @InjectMocks private StudentServiceImpl studentService;

  @Test
  void save_shouldPersistStudent() {
    Student student = new Student();
    student.setName("Test Student");
    when(studentRepository.save(student)).thenReturn(student);

    Student result = studentService.save(student);

    assertEquals("Test Student", result.getName());
    verify(studentRepository).save(student);
  }

  @Test
  void fetchJoinedStudentCourseData_shouldDelegateToRepository() {
    List<StudentCourseView> expected =
        List.of(
            new StudentCourseView(1L, "A", "a@bits.edu", 1, "CSE101", "Programming Fundamentals"));
    when(studentRepository.fetchStudentCourseDetails()).thenReturn(expected);

    List<StudentCourseView> actual = studentService.fetchJoinedStudentCourseData();

    assertEquals(1, actual.size());
    verify(studentRepository).fetchStudentCourseDetails();
  }
}
