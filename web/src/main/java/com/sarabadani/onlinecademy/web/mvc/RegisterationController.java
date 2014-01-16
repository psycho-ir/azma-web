package com.sarabadani.onlinecademy.web.mvc;

import com.sarabadani.onlinecademy.model.student.Grade;
import com.sarabadani.onlinecademy.model.user.User;
import com.sarabadani.onlinecademy.service.user.SecurityUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;

/**
 * Author: Soroosh Sarabadani
 * Date: 3/15/13
 * Time: 2:32 PM
 */
@Controller
public class RegisterationController {

    @Autowired
    private SecurityUserService userService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterPage(ModelMap modelMap) {
        modelMap.addAttribute("grades", Grade.values());
        return "Register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(String username, String password, String name, String lastName, String email, Date birthDate, Grade grade) {
        User user = new User(username, password, name, lastName, email, birthDate, grade);
        System.out.println(user);
        return "Register";
    }
}
