package com.formulaoneapi.service;

import com.formulaoneapi.exception.ElementAlreadyExistsException;
import com.formulaoneapi.model.Part;
import com.formulaoneapi.model.Supplier;
import com.formulaoneapi.repository.PartRepository;
import com.formulaoneapi.repository.SupplierRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class SupplierService {
    private final SupplierRepository supplierRepository;
    private final PartRepository partRepository;

    public Iterable<Supplier> getAll() {
        return supplierRepository.findAll();
    }

    public Supplier get(String name) {
        return supplierRepository
                .findById(name)
                .orElseThrow(
                        () -> new NoSuchElementException(String.format("Supplier with name '%s' not found", name)));
    }

    public Supplier save(Supplier supplier) {
        assertSupplierDoesNotExist(supplier.getName());
        return supplierRepository.save(supplier);
    }

    public Iterable<Part> getParts(String supplierName) {
        return partRepository.getAllByManufacturer_Name(supplierName);
    }

    public Supplier update(Supplier supplier) {
        assertSupplierExists(supplier.getName());
        return supplierRepository.save(supplier);
    }

    private void assertSupplierExists(String name) {
        if(!supplierRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Supplier with name '%s' not found", name));
        }
    }

    private void assertSupplierDoesNotExist(String name) {
        if(supplierRepository.existsById(name)) {
            throw new ElementAlreadyExistsException(String.format("Supplier with name '%s' already exists", name));
        }
    }
}
