package com.example.recipemanager.controller;

import com.example.recipemanager.model.Role;
import com.example.recipemanager.model.User;
import com.example.recipemanager.repository.RoleRepository;
import com.example.recipemanager.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashSet;
import java.util.Set;

@Controller
public class LoginController {

    private final RoleRepository roleRepository;
    private final UserService userService;

    public LoginController(RoleRepository roleRepository, UserService userService) {
        this.roleRepository = roleRepository;
        this.userService = userService;
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("user", new User());
        return "user-registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute @Validated User user, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {
            userService.saveUser(user);
            return "redirect:/";
        }
        return "user-registration";
    }

}