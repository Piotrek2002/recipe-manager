package com.example.recipemanager.controller;

import com.example.recipemanager.model.Recipe;
import com.example.recipemanager.repository.CuisineRepository;
import com.example.recipemanager.repository.RecipeRepository;
import com.example.recipemanager.repository.UserRepository;
import com.example.recipemanager.service.RecipeService;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@Controller
@RequestMapping("/recipe")
public class RecipeController {
    private final CuisineRepository cuisineRepository;
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;
    private final RecipeService recipeService;

    public RecipeController(CuisineRepository cuisineRepository, RecipeRepository recipeRepository, UserRepository userRepository, RecipeService recipeService) {
        this.cuisineRepository = cuisineRepository;
        this.recipeRepository = recipeRepository;
        this.userRepository = userRepository;
        this.recipeService = recipeService;
    }

    @GetMapping("/all")
    public String all(Model model,@AuthenticationPrincipal UserDetails customUser){
        model.addAttribute("recipes",recipeRepository.findAllById(userRepository.findByUsername(customUser.getUsername()).getId()));
        return "recipe-all";

    }
    @GetMapping("/allByCuisine/{name}")
    public String allByCousin(Model model, @AuthenticationPrincipal UserDetails customUser, @PathVariable String name){
        model.addAttribute("recipes",recipeRepository.findAllByCousin(userRepository.findByUsername(customUser.getUsername()).getId(),name));
        return "recipe-all";

    }
    @GetMapping("/allByName/{name}")
    public String allByName(Model model,@AuthenticationPrincipal UserDetails customUser, @PathVariable String name){
        model.addAttribute("recipes",recipeRepository.findAllByName(userRepository.findByUsername(customUser.getUsername()).getId(),name));
        return "recipe-all";

    }


    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("cuisines",cuisineRepository.findAll());
        model.addAttribute("recipe",new Recipe());
        return "recipe-add";

    }
    @PostMapping("/add")
    public String add(@ModelAttribute @Validated Recipe recipe, BindingResult bindingResult,@AuthenticationPrincipal UserDetails customUser){
        if (!bindingResult.hasErrors()) {
            recipeService.saveRecipe(recipe,customUser.getUsername());
            return "redirect:/recipe/all";
        }
        return "recipe-add";

    }
    @GetMapping("/details/{id}")
    public String details(Model model,@AuthenticationPrincipal UserDetails customUser, @PathVariable Long id){
        model.addAttribute("recipe",recipeRepository.findById(id).orElse(null));
        return "recipe-details";
    }
    @GetMapping("/delete/{id}")
    public String delete(@AuthenticationPrincipal UserDetails customUser, @PathVariable Long id){
        if (Objects.equals(userRepository.findByUsername(customUser.getUsername()).getId(), recipeRepository.findById(id).orElse(new Recipe()).getUser().getId())){
            recipeRepository.delete(recipeRepository.findById(id).orElse(new Recipe()));
        }
        return "redirect:/recipe/all";
    }
}
