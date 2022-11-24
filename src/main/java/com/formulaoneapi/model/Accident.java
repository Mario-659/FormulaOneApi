package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

@Entity
@Data
public class Accident {
    @Id
    @NotBlank(message = "Name cannot be blank")
    private String name;

    @Column( length = 1000 )
    @NotBlank(message = "Description cannot be blank")
    private String description;
}
