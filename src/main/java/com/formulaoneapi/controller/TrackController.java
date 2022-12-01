package com.formulaoneapi.controller;

import com.formulaoneapi.model.Track;
import com.formulaoneapi.service.TrackService;
import com.formulaoneapi.validation.groups.IdValidation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;

@RequiredArgsConstructor
@RestController
@RequestMapping("/tracks")
public class TrackController {
    private final TrackService trackService;

    @GetMapping
    public Iterable<Track> getAllTracks() {
        return trackService.getAll();
    }

    @GetMapping("/{name}")
    public Track getTrack(@PathVariable String name) {
        return trackService.get(name);
    }

    @DeleteMapping("/{name}")
    public void deleteTrack(@PathVariable String name) { trackService.remove(name); }

    @PutMapping("/{name}")
    public Track updateTrack(@PathVariable String name, @Validated @RequestBody Track track) {
        track.setTrackName(name);
        return trackService.update(track);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Track createAccident(@Validated({IdValidation.class, Default.class}) @RequestBody Track track) { return trackService.save(track); }
}
