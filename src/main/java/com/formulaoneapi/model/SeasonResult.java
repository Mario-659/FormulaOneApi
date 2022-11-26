package com.formulaoneapi.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Data
public class SeasonResult {
    @Id
    private int id;

    @JoinColumn
    @ManyToOne
    @JsonIgnoreProperties({"team", "nationality", "dateOfBirth"})
    private Driver driver;

    @JoinColumn
    @ManyToOne
    @JsonIgnoreProperties({"track"})
    private GrandPrix grandPrix;

    private int position;

    private int points;
}
