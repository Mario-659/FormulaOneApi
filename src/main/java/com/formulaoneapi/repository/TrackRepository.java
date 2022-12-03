package com.formulaoneapi.repository;

import com.formulaoneapi.model.Track;
import org.springframework.data.repository.CrudRepository;

public interface TrackRepository extends CrudRepository<Track, String> {
}
