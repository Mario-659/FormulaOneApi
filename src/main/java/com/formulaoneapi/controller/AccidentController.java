package com.formulaoneapi.controller;

import com.formulaoneapi.model.Accident;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/accidents")
public class AccidentController {

    @GetMapping("/")
    public List<Accident> getAllAccidents() {
        return List.of();
    }

    @PostMapping("/")
    public Accident createAccident() {
        return new Accident();
    }

    @GetMapping("/{name}")
    public Accident getAccident(@PathVariable String name) {
        return new Accident();
    }

    @DeleteMapping("/{name}")
    public void deleteAccident(@PathVariable String name) { }
}
