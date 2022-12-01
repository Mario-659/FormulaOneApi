package com.formulaoneapi.model;

import com.formulaoneapi.validation.ContinentExists;
import com.formulaoneapi.validation.CountryExists;
import com.formulaoneapi.validation.groups.IdValidation;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Data
public class Track {
    @Id
    @NotBlank(groups = {IdValidation.class}, message = "Name cannot be blank")
    @Size(
            max = 255,
            message = "Track name must not exceed 255 characters",
            groups = {IdValidation.class} )
    private String trackName;

    @CountryExists(message = "Country does not exist")
    @NotBlank( message = "Localisation cannot be blank")
    @Size(
            max = 56,
            message = "Localisation must not exceed 56 characters" )
    private String localisation;

    @ContinentExists(message = "Continent does not exist")
    @NotBlank( message = "Continent cannot be blank")
    @Size(
            max = 20,
            message = "Continent must not exceed 20 characters" )
    private String continent;
}
