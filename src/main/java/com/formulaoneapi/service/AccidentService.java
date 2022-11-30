package com.formulaoneapi.service;

import com.formulaoneapi.exception.ElementAlreadyExistsException;
import com.formulaoneapi.model.Accident;
import com.formulaoneapi.repository.AccidentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class AccidentService {

    private final AccidentRepository accidentRepository;

    public Iterable<Accident> getAll() { return accidentRepository.findAll(); }

    public Accident get(String name) {
        return accidentRepository
                .findById(name)
                .orElseThrow(
                        () -> new NoSuchElementException(String.format("Accident type '%s' not found", name))
                );
    }

    @Transactional
    public void remove(String name) {
        assertAccidentDoesNotExist(name);
        accidentRepository.deleteById(name);
    }

    @Transactional
    public Accident update(Accident accident) {
        assertAccidentDoesNotExist(accident.getName());
        return accidentRepository.save(accident);
    }

    public Accident save(Accident accident) {
        assertAccidentExists(accident.getName());
        return accidentRepository.save(accident);
    }

    private void assertAccidentExists(String name) {
        if (!accidentRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Accident type '%s' not found", name));
        }
    }

    private void assertAccidentDoesNotExist(String name) {
        if (accidentRepository.existsById(name)) {
            throw new ElementAlreadyExistsException(String.format("Accident type '%s' already exists", name));
        }
    }

}
