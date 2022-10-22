package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDate;

@Entity
@Data
public class Driver {
    @Id
    private int number;

    private String firstName;

    private String lastName;

    private String nationality;

    @ManyToOne
    @JoinColumn
    private Team team;

    private LocalDate dateOfBirth;
}
