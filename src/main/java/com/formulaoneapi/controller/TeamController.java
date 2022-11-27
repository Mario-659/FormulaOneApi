package com.formulaoneapi.controller;

import com.formulaoneapi.model.Driver;
import com.formulaoneapi.model.SeasonResult;
import com.formulaoneapi.model.Team;
import com.formulaoneapi.service.TeamService;
import com.formulaoneapi.validation.groups.IdValidation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;

@RestController
@RequiredArgsConstructor
@RequestMapping("/teams")
public class TeamController {

    private final TeamService teamService;

    @GetMapping
    public Iterable<Team> getAllTeams() {
        return teamService.getAll();
    }

    @GetMapping("/{name}")
    public Team getTeam(@PathVariable String name) {
        return teamService.get(name);
    }

    @GetMapping("/{name}/season-results")
    public Iterable<SeasonResult> getTeamResults(@PathVariable String name) {
        return teamService.getSeasonResults(name);
    }

    @GetMapping("/{name}/drivers")
    public Iterable<Driver> getDrivers(@PathVariable String name) {
        return teamService.getDrivers(name);
    }

    @PostMapping
    public Team save(@Validated({IdValidation.class, Default.class}) @RequestBody Team team) {
        return teamService.save(team);
    }

    @PutMapping("/{name}")
    public Team update(@Validated @RequestBody Team team, @PathVariable String name) {
        team.setName(name);
        return teamService.update(team);
    }
}
