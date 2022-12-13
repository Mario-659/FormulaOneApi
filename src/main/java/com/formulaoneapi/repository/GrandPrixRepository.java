package com.formulaoneapi.repository;

import com.formulaoneapi.model.GrandPrix;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GrandPrixRepository extends CrudRepository<GrandPrix, String> { }
