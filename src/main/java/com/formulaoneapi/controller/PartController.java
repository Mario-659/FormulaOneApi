package com.formulaoneapi.controller;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.service.PartService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RequiredArgsConstructor
@RestController
@RequestMapping("/parts")
public class PartController {

    private final PartService partService;

    @GetMapping
    public Iterable<Part> getAllParts() {
        return partService.getAll();
    }

    @GetMapping("/{name}")
    public Part getPart(@PathVariable String name) {
        return partService.get(name);
    }

    @DeleteMapping("/{name}")
    public void deletePart(@PathVariable String name) {
        partService.remove(name);
    }

    @PutMapping("/{name}")
    public Part updatePart(@PathVariable String name, @RequestBody Part part) {
        part.setName(name);

        return partService.update(part);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Part createPart(@RequestBody Part part) {
        return partService.save(part);
    }
}
