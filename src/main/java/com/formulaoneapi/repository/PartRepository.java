package com.formulaoneapi.repository;

import com.formulaoneapi.model.Part;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PartRepository extends CrudRepository<Part, Integer> {
    Iterable<Part> getAllByManufacturer_Name(String manufacturer);
}
