package com.formulaoneapi.controller;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.model.Supplier;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/suppliers")
public class SupplierController {

    @GetMapping("/")
    public List<Supplier> getAllSuppliers() {
        return List.of();
    }

    @PostMapping("/")
    public Supplier saveSupplier(@RequestBody Supplier supplier) {
        return new Supplier();
    }

    @GetMapping("/{name}")
    public Supplier getSupplier(@PathVariable String name) {
        return new Supplier();
    }

    @DeleteMapping("/{name}")
    public void deleteSupplier(@PathVariable String name) {
        return;
    }

    @GetMapping("/{name}/parts")
    public List<Part> getSuppliersParts(@PathVariable String name) {
        return List.of();
    }
}
