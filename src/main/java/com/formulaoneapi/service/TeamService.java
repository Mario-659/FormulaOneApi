package com.formulaoneapi.service;

import com.formulaoneapi.exception.ElementAlreadyExistsException;
import com.formulaoneapi.model.Driver;
import com.formulaoneapi.model.SeasonResult;
import com.formulaoneapi.model.Team;
import com.formulaoneapi.repository.CarRepository;
import com.formulaoneapi.repository.DriverRepository;
import com.formulaoneapi.repository.SeasonResultRepository;
import com.formulaoneapi.repository.TeamRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class TeamService {

    private final TeamRepository teamRepository;
    private final SeasonResultRepository resultRepository;
    private final CarRepository carRepository;
    private final DriverRepository driverRepository;

    public Iterable<Team> getAll() {
        return teamRepository.findAll();
    }

    public Team get(String name) {
        return teamRepository
                .findById(name)
                .orElseThrow(() -> new NoSuchElementException(String.format("Team with name '%s' not found", name)));
    }

    @Transactional
    public Team update(Team team) {
        assertTeamExists(team.getName());

        return teamRepository.save(team);
    }

    @Transactional
    public Team save(Team team) {
        assertTeamDoesNotExist(team.getName());
        assertCarExists(team.getCar().getName());

        return teamRepository.save(team);
    }

    @Transactional
    public Iterable<SeasonResult> getSeasonResults(String name) {
        assertTeamExists(name);

        return resultRepository.getAllByTeam(name);
    }

    @Transactional
    public Iterable<Driver> getDrivers(String name) {
        assertTeamExists(name);

        return driverRepository.findDriversByTeamName(name);
    }

    private void assertTeamExists(String name) {
        if (!teamRepository.existsById(name)) {
            throw new NoSuchElementException(String.format("Team with name '%s' not found", name));
        }
    }

    private void assertTeamDoesNotExist(String name) {
        if (teamRepository.existsById(name)) {
            throw new ElementAlreadyExistsException(String.format("Team with name '%s' already exists", name));
        }
    }

    private void assertCarExists(String name) {
        if (!carRepository.existsById(name)) {
            throw new IllegalArgumentException(String.format("Car with name '%s' does not exist", name));
        }
    }
}
