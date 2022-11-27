package com.formulaoneapi.repository;

import com.formulaoneapi.model.Driver;
import org.springframework.data.repository.CrudRepository;

public interface DriverRepository extends CrudRepository<Driver, Integer> {
    Iterable<Driver> findDriversByTeamName(String name);
}
