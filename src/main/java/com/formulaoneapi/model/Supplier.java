package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Supplier {
    @Id
    private String name;

    private String headquarters;
}
