package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Data
public class Part {
    @Id
    private String name;

    @ManyToOne
    @JoinColumn
    private Supplier manufacturer;

    @ManyToOne
    @JoinColumn
    private Car car;

    private BigDecimal cost;

    private LocalDate estimatedReplacementDate;
}
