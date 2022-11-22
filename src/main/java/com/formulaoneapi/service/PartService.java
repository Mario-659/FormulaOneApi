package com.formulaoneapi.service;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.repository.PartRepository;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
@Log4j2
public class PartService {

    private final PartRepository partRepository;

    public Iterable<Part> getAll() {
        return partRepository.findAll();
    }

    public Part get(String name) {
        return partRepository
                .findById(name)
                .orElseThrow(
                        () -> new NoSuchElementException("Part with name " + name + " not found")
                );
    }

    public void remove(String name) {
        partRepository.deleteById(name);
    }

    @Transactional
    public Part update(Part part) {
        String name = part.getName();
        if (!partRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Part with name '%s' not found", name));
        }

        part.setName(name);
        return partRepository.save(part);
    }

    @Transactional
    public Part save(Part part) {
        if (partRepository.existsById(part.getName())) {
            throw new IllegalArgumentException(String.format("Part with name '%s' already exists", part.getName()));
        }

        return partRepository.save(part);
    }
}
