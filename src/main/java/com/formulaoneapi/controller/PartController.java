package com.formulaoneapi.controller;

import com.formulaoneapi.model.Part;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/parts")
public class PartController {

    @GetMapping("/")
    public List<Part> getAllParts() {
        return List.of();
    }

    @GetMapping("/{name}")
    public Part getPart(@PathVariable String name) {
        return new Part();
    }

    @DeleteMapping("/{name}")
    public void deletePart(@PathVariable String name) { }

    @PutMapping("/{name}")
    public Part updatePart(@PathVariable String name) {
        return new Part();
    }
}
