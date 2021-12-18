package com.example.recipemanager.service;

import com.example.recipemanager.model.Recipe;
import com.example.recipemanager.repository.RecipeRepository;
import com.example.recipemanager.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class RecipeService {
    private final RecipeRepository recipeRepository;
    private final UserRepository userRepository;

    public RecipeService(RecipeRepository recipeRepository, UserRepository userRepository) {
        this.recipeRepository = recipeRepository;
        this.userRepository = userRepository;
    }
    public void saveRecipe(Recipe recipe,String customUser){
        recipe.setUser(userRepository.findByUsername(customUser));
        recipeRepository.save(recipe);

    }
}
