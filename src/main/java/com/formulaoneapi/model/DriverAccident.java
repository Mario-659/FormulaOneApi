package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Data
public class DriverAccident {
    @Id
    private int id;

    @ManyToOne
    @JoinColumn
    private Accident accident;

    @ManyToOne
    @JoinColumn
    private Driver driver;

    private BigDecimal cost;
}
