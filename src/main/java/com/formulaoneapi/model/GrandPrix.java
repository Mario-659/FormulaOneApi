package com.formulaoneapi.model;

import com.formulaoneapi.validation.groups.IdValidation;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.time.LocalDate;

@Entity
@Data
public class GrandPrix {
    @Id
    @NotBlank(groups = {IdValidation.class}, message = "Name cannot be blank" )
    @Size(
            max = 255,
            message = "Grand Prix name must not exceed 255 characters",
            groups = {IdValidation.class} )
    private String grandPrix;

    @ManyToOne
    @JoinColumn
    @NotNull(message = "Track cannot be null")
    private Track track;

    @NotNull(message = "Date cannot be null")
    private LocalDate date;
}
