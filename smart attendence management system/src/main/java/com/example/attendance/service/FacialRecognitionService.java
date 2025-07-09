package com.example.attendance.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FacialRecognitionService {
    // Register a student's face
    public void registerStudentFace(Long studentId, MultipartFile imageFile) {

    }

    // uploaded image and return the matched studentId (or null if not found)
    public Long recognizeStudentFace(MultipartFile imageFile) {
        return null;
    }
} 