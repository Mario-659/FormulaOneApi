package com.formulaoneapi.controller;

import com.formulaoneapi.model.Driver;
import com.formulaoneapi.model.DriverAccident;
import com.formulaoneapi.model.SeasonResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/drivers")
public class DriverController {

    @GetMapping("/")
    public List<Driver> getAllDrivers() {
        return List.of();
    }

    @PostMapping("/")
    public Driver saveDriver(@RequestBody Driver driver) {
        return new Driver();
    }

    @GetMapping("/{number}")
    public Driver getDriver(@PathVariable int number) {
        return new Driver();
    }

    @GetMapping("/{number}/accidents")
    public List<DriverAccident> getDriverAccidents (@PathVariable int number) {
        return List.of();
    }

    @GetMapping("/{number}/season-results")
    public List<SeasonResult> getDriverResults (@PathVariable int number) {
        return List.of();
    }
}
