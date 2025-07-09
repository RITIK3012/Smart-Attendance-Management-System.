package com.example.attendance.service;

import com.example.attendance.model.Student;
import com.example.attendance.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;

    //     List<Admin> AdminService= Arrays.asList(
//       new student(1165),    // id
//       new student("Ram"),  //name
//       new student("ram@ram"),  //rollno
//       new student("ram@gmail.com")); //email
//       new Student("jpg") //   photo path


    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    public Optional<Student> getStudentById(Long id) {
        return studentRepository.findById(id);
    }

    public Student saveStudent(Student student) {
        return studentRepository.save(student);
    }

    public void deleteStudent(Long id) {
        studentRepository.deleteById(id);
    }

    public Student getStudentByRollNo(String rollNo) {
        return studentRepository.findByRollNo(rollNo);
    }
} 