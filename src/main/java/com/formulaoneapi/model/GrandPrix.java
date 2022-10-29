package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import java.time.LocalDate;

@Entity
@Data
public class GrandPrix {
    @Id
    private String grandPrix;

    @ManyToOne
    @JoinColumn
    private Track track;

    private LocalDate date;
}
