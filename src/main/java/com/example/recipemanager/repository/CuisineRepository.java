package com.example.recipemanager.repository;

import com.example.recipemanager.model.Cuisine;
import com.example.recipemanager.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CuisineRepository extends JpaRepository<Cuisine, Long> {
}
