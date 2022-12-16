package com.formulaoneapi.model;

import com.formulaoneapi.validation.groups.IdValidation;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Data
public class Supplier {
    @Id
    @NotBlank(groups = {IdValidation.class}, message = "Name cannot be blank" )
    @Size(
            max = 255,
            message = "Supplier name must not exceed 255 characters",
            groups = {IdValidation.class} )
    private String name;

    @NotBlank(message = "Headquarters cannot be blank" )
    @Size(
            max = 255,
            message = "Supplier headquarters must not exceed 255 characters")
    private String headquarters;
}
