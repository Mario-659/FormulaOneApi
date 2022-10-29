package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Track {
    @Id
    private String trackName;

    private String localisation;

    private String continent;
}