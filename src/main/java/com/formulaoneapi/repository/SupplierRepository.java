package com.formulaoneapi.repository;

import com.formulaoneapi.model.Supplier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SupplierRepository extends CrudRepository<Supplier, String> { }
