package com.example.attendance.repository;

import com.example.attendance.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByUsername(String username);
} 