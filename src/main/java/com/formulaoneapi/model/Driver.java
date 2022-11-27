package com.formulaoneapi.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

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
    @JsonIgnoreProperties({"leader", "technicalLeader", "car", "city"})
    private Team team;

    private LocalDate dateOfBirth;
}
