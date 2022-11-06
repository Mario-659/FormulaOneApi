package com.formulaoneapi.controller;

import com.formulaoneapi.model.Driver;
import com.formulaoneapi.model.SeasonResult;
import com.formulaoneapi.model.Team;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/teams")
public class TeamController {

    @GetMapping("/")
    public List<Team> getAllTeams() {
        return List.of();
    }

    @GetMapping("/{name}")
    public Team getTeam(@PathVariable String name) {
        return new Team();
    }

    @GetMapping("/{name}/season-results")
    public List<SeasonResult> getTeamResults(@PathVariable String name) {
        return List.of();
    }

    @GetMapping("/{name}/drivers")
    public List<Driver> getTeamDrivers(@PathVariable String name) {
        return List.of();
    }
}
