package com.formulaoneapi.service;

import com.formulaoneapi.exception.ElementAlreadyExistsException;
import com.formulaoneapi.model.Driver;
import com.formulaoneapi.model.DriverAccident;
import com.formulaoneapi.model.SeasonResult;
import com.formulaoneapi.repository.AccidentRepository;
import com.formulaoneapi.repository.DriverAccidentRepository;
import com.formulaoneapi.repository.DriverRepository;
import com.formulaoneapi.repository.SeasonResultRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class DriverService {

    private final DriverRepository driverRepository;
    private final DriverAccidentRepository driverAccidentRepository;
    private final SeasonResultRepository seasonResultRepository;

    public Iterable<Driver> getAll() {
        return driverRepository.findAll();
    }

    public Driver save(Driver driver) {
        assertDriverDoesNotExist(driver.getNumber());
        return driverRepository.save(driver);
    }

    public Driver get(int number) {
        return driverRepository.findById(number)
                                .orElseThrow(
                                        () -> new NoSuchElementException(String.format("Driver with id '%d' does not exist", number))
                                );
    }

    public Driver update(Driver driver) {
        assertDriverExists(driver.getNumber());
        return driverRepository.save(driver);
    }

    public Iterable<DriverAccident> getAccidents(int number) {
        assertDriverExists(number);
        return driverAccidentRepository.findDriverAccidentsByDriverNumber(number);
    }

    public Iterable<SeasonResult> getResults(int number) {
        assertDriverExists(number);
        return seasonResultRepository.getSeasonResultsByDriverNumber(number);
    }

    private void assertDriverExists(int number) {
        if(!driverRepository.existsById(number)) {
            throw new NoSuchElementException(String.format("Driver with id '%d' does not exist", number));
        }
    }

    private void assertDriverDoesNotExist(int number) {
        if(driverRepository.existsById(number)) {
            throw new ElementAlreadyExistsException(String.format("Driver with id '%d' already exists", number));
        }
    }
}
