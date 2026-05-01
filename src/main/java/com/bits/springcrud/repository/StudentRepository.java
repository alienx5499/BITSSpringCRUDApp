package com.bits.springcrud.repository;

import com.bits.springcrud.dto.StudentCourseView;
import com.bits.springcrud.model.Student;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StudentRepository extends JpaRepository<Student, Long> {

  @Query(
      """
      select new com.bits.springcrud.dto.StudentCourseView(
          s.id, s.name, s.email, s.yearLevel, c.code, c.title
      )
      from Student s
      inner join s.course c
      order by s.id
      """)
  List<StudentCourseView> fetchStudentCourseDetails();
}
