package com.formulaoneapi.controller;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.model.Supplier;
import com.formulaoneapi.service.SupplierService;
import com.formulaoneapi.validation.groups.IdValidation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;


@RestController
@RequestMapping("/suppliers")
@RequiredArgsConstructor
public class SupplierController {
    private final SupplierService supplierService;

    @GetMapping
    public Iterable<Supplier> getAllSuppliers() {
        return supplierService.getAll();
    }

    @GetMapping("/{name}")
    public Supplier getSupplier(@PathVariable String name) {
        return supplierService.get(name);
    }

    @PostMapping
    public Supplier saveSupplier(@Validated({IdValidation.class, Default.class}) @RequestBody Supplier supplier) {
        return supplierService.save(supplier);
    }

    @DeleteMapping("/{name}")
    public void deleteSupplier(@PathVariable String name) {
        supplierService.delete(name);
    }

    @PutMapping("/{name}")
    public Supplier updateSupplier(@Validated @RequestBody Supplier supplier, @PathVariable String name) {
        supplier.setName(name);
        return supplierService.update(supplier);
    }

    @GetMapping("/{name}/parts")
    public Iterable<Part> getSuppliersParts(@PathVariable String name) {
        return supplierService.getParts(name);
    }
}
