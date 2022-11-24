package com.formulaoneapi.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Data
public class Accident {
    @Id
    @NotBlank(message = "Name cannot be blank")
    private String name;

    @Size(max = 1000, message = "Description is textual definition of accident and cannot exceeded 1000 char limit.")
    @Column(length = 1000)
    @NotBlank(message = "Description cannot be blank.")
    private String description;
}
