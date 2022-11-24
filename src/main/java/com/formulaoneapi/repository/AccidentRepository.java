package com.formulaoneapi.repository;

import com.formulaoneapi.model.Accident;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccidentRepository extends CrudRepository<Accident, String> { }
