package com.formulaoneapi.service;

import com.formulaoneapi.model.Part;
import com.formulaoneapi.repository.PartRepository;

import lombok.RequiredArgsConstructor;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class PartService {

    private final PartRepository partRepository;

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
        partRepository.deleteById(id);
    }

    @Transactional
    public Part update(Part part) {
        int id = part.getId();
        if (!partRepository.existsById(id)) {
            throw new NoSuchElementException(String.format("Part with id '%d' not found", id));
        }

        return partRepository.save(part);
    }

    public Part save(Part part) {
        part.setId(null);

        return partRepository.save(part);
    }
}
