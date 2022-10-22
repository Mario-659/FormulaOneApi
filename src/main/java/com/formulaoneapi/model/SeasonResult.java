package com.formulaoneapi.model;

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
    private Driver driver;

    @JoinColumn
    @ManyToOne
    private GrandPrix grandPrix;

    private int position;

    private int points;
}
