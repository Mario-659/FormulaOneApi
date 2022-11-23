package com.formulaoneapi.controller;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.service.PartService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;

@RequiredArgsConstructor
@RestController
@RequestMapping("/parts")
public class PartController {

    private final PartService partService;

    @GetMapping
    public Iterable<Part> getAllParts() {
        return partService.getAll();
    }

    @GetMapping("/{id}")
    public Part getPart(@PathVariable int id) {
        return partService.get(id);
    }

    @DeleteMapping("/{id}")
    public void deletePart(@PathVariable int id) {
        partService.remove(id);
    }

    @PutMapping("/{id}")
    public Part updatePart(
            @PathVariable int id,
            @Validated(Default.class) @RequestBody Part part)
    {
        part.setId(id);

        return partService.update(part);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Part createPart(@Validated @RequestBody Part part) {
        return partService.save(part);
    }
}
