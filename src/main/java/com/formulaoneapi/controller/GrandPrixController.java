package com.formulaoneapi.controller;

import com.formulaoneapi.model.GrandPrix;
import com.formulaoneapi.service.GrandPrixService;
import com.formulaoneapi.validation.groups.IdValidation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;

@RestController
@RequestMapping("/grand-prix")
@RequiredArgsConstructor
public class GrandPrixController {

    private final GrandPrixService grandPrixService;

    @GetMapping
    public Iterable<GrandPrix> getAllGrandPrix() {
        return grandPrixService.getAll();
    }

    @GetMapping("/{name}")
    public GrandPrix get(@PathVariable String name) {
        return grandPrixService.get(name);
    }

    @PostMapping
    public GrandPrix createGrandPrix(@Validated({IdValidation.class, Default.class}) @RequestBody GrandPrix grandPrix) {
        return grandPrixService.save(grandPrix);
    }
}
