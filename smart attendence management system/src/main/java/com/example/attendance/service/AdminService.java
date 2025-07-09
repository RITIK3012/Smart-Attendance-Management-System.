package com.example.attendance.service;

import com.example.attendance.model.Admin;
import com.example.attendance.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

//       List<Admin> AdminService= Arrays.asList(
//       new Admin(1165),      //id
//       new Admin("Ram"),  //username
//       new Admin("ram@ram"),  //password
//       new Admin("ram@gmail.com"));  //emailid

    public List<Admin> getAllAdmins() {
        return adminRepository.findAll();
    }

    public Optional<Admin> getAdminById(Long id) {
        return adminRepository.findById(id);
    }

    public Admin saveAdmin(Admin admin) {
        return adminRepository.save(admin);
    }

    public void deleteAdmin(Long id) {
        adminRepository.deleteById(id);
    }

    public Admin getAdminByUsername(String username) {
        return adminRepository.findByUsername(username);
    }
} 