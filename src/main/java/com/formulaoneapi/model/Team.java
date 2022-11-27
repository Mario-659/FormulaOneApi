package com.formulaoneapi.model;

import com.formulaoneapi.validation.groups.IdValidation;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Data
public class Team {
    @Id
    @NotBlank(groups = {IdValidation.class}, message = "Name cannot be blank" )
    @Size(
            max = 255,
            message = "Team name must not exceed 255 characters",
            groups = {IdValidation.class} )
    private String name;

    @NotBlank(message = "Leader cannot be blank")
    @Size(max = 255, message = "Leader must not exceed 255 characters")
    private String leader;

    @NotBlank(message = "Technical leader cannot be blank")
    @Size(max = 255, message = "Technical leader must not exceed 255 characters")
    private String technicalLeader;

    @OneToOne
    @JoinColumn
    @NotNull(message = "Car cannot be null")
    private Car car;

    @NotBlank(message = "City must not be blank")
    @Size(max = 255, message = "City must not exceed 255 characters")
    private String city;
}
