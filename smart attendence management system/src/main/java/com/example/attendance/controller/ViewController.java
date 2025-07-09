package com.example.attendance.controller;

import com.example.attendance.service.StudentService;
import com.example.attendance.service.AttendanceService;
import com.example.attendance.model.Attendance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private AttendanceService attendanceService;

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboardPage(Model model) {
        int totalStudents = studentService.getAllStudents().size();
        int totalAttendance = attendanceService.getAllAttendance().size();
        List<Attendance> recentAttendance = attendanceService.getAllAttendance()
            .stream()
            .sorted((a, b) -> b.getDate().compareTo(a.getDate()))
            .limit(10)
            .collect(Collectors.toList());
        model.addAttribute("totalStudents", totalStudents);
        model.addAttribute("totalAttendance", totalAttendance);
        model.addAttribute("recentAttendance", recentAttendance);
        return "dashboard";
    }

    @GetMapping("/students")
    public String studentsPage(Model model) {
        model.addAttribute("students", studentService.getAllStudents());
        return "students";
    }

    @GetMapping("/attendance")
    public String attendancePage(Model model) {
        model.addAttribute("students", studentService.getAllStudents());
        return "attendance";
    }

    @GetMapping("/history")
    public String historyPage(Model model) {
        model.addAttribute("attendanceRecords", attendanceService.getAllAttendance());
        return "history";
    }
} 