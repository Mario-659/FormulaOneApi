package com.formulaoneapi.controller;

import com.formulaoneapi.model.GrandPrix;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/grand-prix")
public class GrandPrixController {

    @GetMapping("/")
    public List<GrandPrix> getAllGrandPrix() {
        return List.of();
    }

    @PostMapping("/")
    public GrandPrix createGrandPrix(@RequestBody GrandPrix grandPrix) {
        return new GrandPrix();
    }
}
