package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Accident {
    @Id
    private String name;

    @Column( length = 1000 )
    private String description;
}
