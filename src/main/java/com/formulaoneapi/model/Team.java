package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
@Data
public class Team {
    @Id
    private String name;

    private String leader;

    private String technicalLeader;

    @OneToOne
    @JoinColumn
    private Car car;

    private String city;
}
