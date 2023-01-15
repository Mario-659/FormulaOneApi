package com.formulaoneapi.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import com.formulaoneapi.validation.groups.IdValidation;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

@Entity
@Data
public class Driver {
    @Id
    @NotNull(
            message = "Driver number cannot be null",
            groups = {IdValidation.class})
    @Min(
            value = 1,
            message = "Number of the driver must be greater than 0",
            groups = {IdValidation.class}
    )
    private int number;

    @NotBlank(message = "First name cannot be blank" )
    @Size(
            max = 255,
            message = "First name must not exceed 255 characters")
    private String firstName;

    @NotBlank(message = "Last name cannot be blank" )
    @Size(
            max = 255,
            message = "Last name must not exceed 255 characters")
    private String lastName;

    @NotBlank(message = "Nationality cannot be blank" )
    @Size(
            max = 255,
            message = "Nationality must not exceed 255 characters")
    private String nationality;

    @ManyToOne
    @JoinColumn
    @JsonIgnoreProperties({"leader", "technicalLeader", "car", "city"})
    @NotNull(message = "Team cannot be null")
    private Team team;

    @NotNull(message = "Date of birth cannot be null")
    private LocalDate dateOfBirth;
}
