package com.example.recipemanager.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@Setter
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, unique = true, length = 60)
    private String name;
    private String ingredients;
    @ManyToOne
    private Cuisine cuisine;
    private String preparation;

    @ManyToOne
    private User user;

}
