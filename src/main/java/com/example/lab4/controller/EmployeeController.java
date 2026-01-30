package com.example.lab4.controller;

import com.example.lab4.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {

    @GetMapping("/list-employees")
    public String showList(Model model) {
        // Tạo danh sách nhân viên giả lập
        List<Employee> list = new ArrayList<>();
        list.add(new Employee("NV01", "Nguyễn Văn A", 1200.0)); // Lương cao
        list.add(new Employee("NV02", "Trần Thị B", 800.0));    // Lương thấp
        list.add(new Employee("NV03", "Lê Văn C", 2500.0));     // Lương cao
        list.add(new Employee("NV04", "Phạm Văn D", 900.0));    // Lương thấp

        // Đẩy danh sách sang JSP
        model.addAttribute("danhSachNhanVien", list);

        return "list-employees"; // Trả về file list-employees.jsp
    }
}