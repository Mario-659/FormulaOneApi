package com.formulaoneapi.service;

import com.formulaoneapi.exception.ElementAlreadyExistsException;
import com.formulaoneapi.model.Track;
import com.formulaoneapi.repository.TrackRepository;
import com.formulaoneapi.utils.StringOperations;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class TrackService {

    private final TrackRepository trackRepository;

    public Iterable<Track> getAll() { return trackRepository.findAll(); }

    public Track get(String name) {
        return trackRepository
                .findById(name)
                .orElseThrow(
                        () -> new NoSuchElementException(String.format("Track with name '%s' not found", name))
                );
    }

    @Transactional
    public void remove(String name) {
        assertTrackDoesNotExist(name);
        trackRepository.deleteById(name);
    }

    @Transactional
    public Track update(Track track) {
        assertTrackDoesNotExist(track.getTrackName());
        track.setContinent(StringOperations.capitalize(track.getContinent()));
        track.setLocalisation(StringOperations.capitalize(track.getLocalisation()));
        return trackRepository.save(track);
    }

    public Track save(Track track) {
        assertTrackExists(track.getTrackName());
        track.setContinent(StringOperations.capitalize(track.getContinent()));
        track.setLocalisation(StringOperations.capitalize(track.getLocalisation()));
        return trackRepository.save(track);
    }

    private void assertTrackDoesNotExist(String name) {
        if (!trackRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Track with name '%s' not found", name));
        }
    }

    private void assertTrackExists(String name) {
        if (trackRepository.existsById(name)) {
            throw new ElementAlreadyExistsException(String.format("Track with name '%s' already exists", name));
        }
    }
}
