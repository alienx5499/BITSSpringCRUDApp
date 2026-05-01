package com.bits.springcrud.dto;

public record StudentCourseView(
    Long studentId,
    String studentName,
    String studentEmail,
    Integer yearLevel,
    String courseCode,
    String courseTitle) {}
