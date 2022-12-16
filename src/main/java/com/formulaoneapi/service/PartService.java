package com.formulaoneapi.service;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.repository.CarRepository;
import com.formulaoneapi.repository.PartRepository;

import com.formulaoneapi.repository.SupplierRepository;
import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class PartService {

    private final PartRepository partRepository;
    private final CarRepository carRepository;
    private final SupplierRepository supplierRepository;

    public Iterable<Part> getAll() {
        return partRepository.findAll();
    }

    public Part get(int id) {
        return partRepository
                .findById(id)
                .orElseThrow(
                        () -> new NoSuchElementException(String.format("Part with id '%d' not found", id))
                );
    }

    public void remove(int id) {
        assertPartExists(id);
        partRepository.deleteById(id);
    }

    @Transactional
    public Part update(Part part) {
        int id = part.getId();
        assertPartExists(id);
        assertCarExists(part.getCar().getName());
        assertSupplierExists(part.getManufacturer().getName());

        return partRepository.save(part);
    }

    public Part save(Part part) {
        part.setId(null);
        assertCarExists(part.getCar().getName());
        assertSupplierExists(part.getManufacturer().getName());

        return partRepository.save(part);
    }

    private void assertPartExists(int id) {
        if (!partRepository.existsById(id)) {
            throw new NoSuchElementException(String.format("Part with id '%d' not found", id));
        }
    }

    private void assertCarExists(String name) {
        if(name == null) {
            throw new IllegalArgumentException("Name of the car cannot be null");
        }
        else if(!carRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Car with name '%s' not found", name));
        }
    }

    private void assertSupplierExists(String name) {
        if(name == null) {
            throw new IllegalArgumentException("Name of the manufacturer cannot be null");
        }
        else if(!supplierRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Manufacturer with name '%s' not found", name));
        }
    }
}
