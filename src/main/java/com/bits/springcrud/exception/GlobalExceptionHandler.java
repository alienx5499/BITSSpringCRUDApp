package com.bits.springcrud.exception;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

  @ExceptionHandler(DataIntegrityViolationException.class)
  public String handleIntegrityViolation(DataIntegrityViolationException ex, Model model) {
    model.addAttribute("errorMessage", "Data integrity error: duplicate or invalid relationship.");
    model.addAttribute("errorDetails", ex.getMostSpecificCause().getMessage());
    return "error";
  }

  @ExceptionHandler(IllegalArgumentException.class)
  public String handleIllegalArgument(IllegalArgumentException ex, Model model) {
    model.addAttribute("errorMessage", ex.getMessage());
    model.addAttribute("errorDetails", "Please retry with a valid record.");
    return "error";
  }
}
