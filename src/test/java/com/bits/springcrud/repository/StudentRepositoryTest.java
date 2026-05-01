package com.bits.springcrud.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;

import com.bits.springcrud.dto.StudentCourseView;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

@DataJpaTest
class StudentRepositoryTest {

  @Autowired private StudentRepository studentRepository;

  @Test
  void fetchStudentCourseDetails_shouldReturnJoinedRows() {
    List<StudentCourseView> rows = studentRepository.fetchStudentCourseDetails();

    assertFalse(rows.isEmpty());
    assertEquals(10, rows.size());
  }
}
