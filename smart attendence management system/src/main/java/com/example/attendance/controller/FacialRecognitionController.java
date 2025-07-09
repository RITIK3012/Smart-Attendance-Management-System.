package com.example.attendance.controller;

import com.example.attendance.service.FacialRecognitionService;
import com.example.attendance.service.AttendanceService;
import com.example.attendance.model.Attendance;
import com.example.attendance.model.Student;
import com.example.attendance.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDate;
import java.util.Optional;

@RestController
@RequestMapping("/api/facial-recognition")
public class FacialRecognitionController {
    @Autowired
    private FacialRecognitionService facialRecognitionService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private AttendanceService attendanceService;

    // Register a student's face
    @PostMapping("/register/{studentId}")
    public String registerStudentFace(@PathVariable Long studentId, @RequestParam("image") MultipartFile imageFile) {
        facialRecognitionService.registerStudentFace(studentId, imageFile);
        return "Face registered for student ID: " + studentId;
    }

    // Recognize a face and mark attendance
    @PostMapping("/recognize")
    public String recognizeAndMarkAttendance(@RequestParam("image") MultipartFile imageFile) {
        Long studentId = facialRecognitionService.recognizeStudentFace(imageFile);
        if (studentId != null) {
            Optional<Student> studentOpt = studentService.getStudentById(studentId);
            if (studentOpt.isPresent()) {
                Attendance attendance = new Attendance();
                attendance.setStudent(studentOpt.get());
                attendance.setDate(LocalDate.now());
                attendance.setStatus("Present");
                attendanceService.saveAttendance(attendance);
                return "Attendance marked for student ID: " + studentId;
            }
        }
        return "Student not recognized.";
    }
} 