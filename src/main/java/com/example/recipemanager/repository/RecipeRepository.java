package com.example.recipemanager.repository;

import com.example.recipemanager.model.Cuisine;
import com.example.recipemanager.model.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RecipeRepository extends JpaRepository<Recipe, Long> {

    @Query("select r from Recipe r where r.user.id=?1")
    List<Recipe> findAllById(Long id);
    @Query("select r from Recipe r where r.user.id=?1 and r.name=?2")
    List<Recipe> findAllByName(Long id,String name);
    @Query("select r from Recipe r where r.user.id=?1 and r.cuisine.type=?2")
    List<Recipe> findAllByCousin(Long id,String type);
}
