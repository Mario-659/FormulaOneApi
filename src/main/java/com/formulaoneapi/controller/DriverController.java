package com.formulaoneapi.controller;

import com.formulaoneapi.model.Driver;
import com.formulaoneapi.model.DriverAccident;
import com.formulaoneapi.model.SeasonResult;
import com.formulaoneapi.service.DriverService;
import com.formulaoneapi.validation.groups.IdValidation;
import lombok.RequiredArgsConstructor;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;

@RestController
@RequestMapping("/drivers")
@RequiredArgsConstructor
public class DriverController {

    private final DriverService driverService;

    @GetMapping
    public Iterable<Driver> getAllDrivers() {
        return driverService.getAll();
    }

    @PostMapping
    public Driver saveDriver(@Validated({IdValidation.class, Default.class}) @RequestBody Driver driver) {
        return driverService.save(driver);
    }

    @GetMapping("/{number}")
    public Driver getDriver(@PathVariable int number) {
        return driverService.get(number);
    }

    @PutMapping("/{number}")
    public Driver updateDriver(@PathVariable int number,
                               @Validated({Default.class}) @RequestBody Driver driver) {
        driver.setNumber(number);
        return driverService.update(driver);
    }

    @GetMapping("/{number}/accidents")
    public Iterable<DriverAccident> getDriverAccidents (@PathVariable int number) {
        return driverService.getAccidents(number);
    }

    @GetMapping("/{number}/season-results")
    public Iterable<SeasonResult> getDriverResults (@PathVariable int number) {
        return driverService.getResults(number);
    }
}
