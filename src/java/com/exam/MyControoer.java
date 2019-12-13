/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author APCL
 */
@Controller
public class MyControoer {
    @RequestMapping("save.htm")
    public String doSave(@Valid @ModelAttribute("student") Student stu, BindingResult result, Model m){
        if(result.hasErrors()){
            return "creAcc";
        }
        StudentDAO sd = new StudentDAO();
        sd.doSave(stu);
        return "login";
    }
    @RequestMapping("update1.htm")
    public String doUpdasrw(@ModelAttribute("student") Student stu, Model m){
        StudentDAO sd = new StudentDAO();
        sd.doUpppdate(stu);
        List<Student> li = new ArrayList<>();
            li=sd.findAllInfo(stu);
            m.addAttribute("ai", li);
            return "res";
    }
    @RequestMapping("chek.htm")
    public String doC(@ModelAttribute("student") Student stu, Model m){
        StudentDAO sd = new StudentDAO();
        if (sd.checkUser(stu.getId(), stu.getPassword())) {
            List<Student> li = new ArrayList<>();
            li=sd.findAllInfo(stu);
            m.addAttribute("ai", li);
            return "res";
        } else {
            return "login";
        }
    }
    @RequestMapping("delete.htm")
    public String doD(@ModelAttribute("student") Student stu, Model m){
        StudentDAO sd = new StudentDAO();
        sd.doDelete(stu);
            List<Student> li = new ArrayList<>();
            li=sd.findAllInfo(stu);
            m.addAttribute("ai", li);
            return "res";
       
    }
    
    @RequestMapping("upPage.htm")
    public String upPage(@ModelAttribute("student") Student stu, Model m){
        StudentDAO sd = new StudentDAO();        
            List<Student> li = new ArrayList<>();
            li=sd.findAllInfo(stu);
            m.addAttribute("ai", li);
            return "update";
       
    }
}
