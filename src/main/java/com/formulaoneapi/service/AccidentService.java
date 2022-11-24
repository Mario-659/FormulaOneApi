package com.formulaoneapi.service;

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

    public void remove(String name) {
        if (!accidentRepository.existsById(name))
            throw new NoSuchElementException(String.format("Accident type '%s' not found", name));
        accidentRepository.deleteById(name);
    }

    @Transactional
    public Accident update(Accident accident) {
        String name = accident.getName();
        if (!accidentRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Accident type '%s' not found", name));
        }

        return accidentRepository.save(accident);
    }

    public Accident save(Accident accident) {
        return accidentRepository.save(accident);
    }
}
