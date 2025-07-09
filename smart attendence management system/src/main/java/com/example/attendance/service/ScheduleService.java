package com.example.attendance.service;

import com.example.attendance.model.Schedule;
import com.example.attendance.repository.ScheduleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ScheduleService {
    @Autowired
    private ScheduleRepository scheduleRepository;
    //     List<Schedule> AdminService= Arrays.asList(
//       new Schedule(1167),  //id
//       new Schedule("Ram"),    //classname
//       new Schedule("00/00/00"),   //date
//       new Schedule("00:00:00"));   //time


    public List<Schedule> getAllSchedules() {
        return scheduleRepository.findAll();
    }

    public Optional<Schedule> getScheduleById(Long id) {
        return scheduleRepository.findById(id);
    }

    public Schedule saveSchedule(Schedule schedule) {
        return scheduleRepository.save(schedule);
    }

    public void deleteSchedule(Long id) {
        scheduleRepository.deleteById(id);
    }
} 