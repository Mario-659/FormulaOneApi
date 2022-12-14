package com.formulaoneapi.service;

import com.formulaoneapi.exception.ElementAlreadyExistsException;
import com.formulaoneapi.model.GrandPrix;
import com.formulaoneapi.repository.GrandPrixRepository;
import com.formulaoneapi.repository.TrackRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class GrandPrixService {
    private final GrandPrixRepository grandPrixRepository;
    private final TrackRepository trackRepository;

    public Iterable<GrandPrix> getAll() {
        return grandPrixRepository.findAll();
    }

    public GrandPrix get(String name) {
        return grandPrixRepository
                .findById(name)
                .orElseThrow(
                        () -> new NoSuchElementException(String.format("Grand Prix with name '%s' not found", name))
                );
    }

    public GrandPrix save(GrandPrix grandPrix) {
        assertTrackExists(grandPrix.getTrack().getTrackName());
        assertGrandPrixDoesNotExist(grandPrix.getGrandPrix());
        return grandPrixRepository.save(grandPrix);
    }

    public GrandPrix update(GrandPrix grandPrix) {
        assertTrackExists(grandPrix.getTrack().getTrackName());
        assertGrandPrixExists(grandPrix.getGrandPrix());
        return grandPrixRepository.save(grandPrix);
    }

    private void assertTrackExists(String name) {
        if(name == null) {
            throw new IllegalArgumentException("Name of the track cannot be null");
        }
        else if(!trackRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Track with name '%s' not found", name));
        }
    }

    private void assertGrandPrixDoesNotExist(String name) {
        if(grandPrixRepository.existsById(name)) {
            throw new ElementAlreadyExistsException(String.format("Grand Prix '%s' already exists", name));
        }
    }

    private void assertGrandPrixExists(String name) {
        if(!grandPrixRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Grand Prix '%s' not found", name));
        }
    }
}
