package com.formulaoneapi.model;

import com.formulaoneapi.validation.IsNotBeforeToday;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Data
public class Part {

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @NotBlank(message = "Name cannot be blank")
    private String name;

    @ManyToOne
    @JoinColumn
    @NotNull(message = "Supplier cannot be null")
    private Supplier manufacturer;

    @ManyToOne
    @JoinColumn
    @NotNull(message = "Car cannot be null")
    private Car car;

    @NotNull(message = "Cost cannot be null")
    @DecimalMin(value = "0.00", message = "Cost must be equal or greater than 0.00")
    private BigDecimal cost;

    @IsNotBeforeToday(message = "ERD must be equal or greater that now")
    private LocalDate estimatedReplacementDate;
}
