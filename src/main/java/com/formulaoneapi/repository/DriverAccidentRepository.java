package com.formulaoneapi.repository;

import com.formulaoneapi.model.DriverAccident;
import org.springframework.data.repository.CrudRepository;

public interface DriverAccidentRepository extends CrudRepository<DriverAccident, Integer> {
    Iterable<DriverAccident> findDriverAccidentsByDriverNumber(int number);
}
