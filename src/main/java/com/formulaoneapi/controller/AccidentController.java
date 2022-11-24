package com.formulaoneapi.controller;

import com.formulaoneapi.model.Accident;
import com.formulaoneapi.service.AccidentService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.groups.Default;

@RequiredArgsConstructor
@RestController
@RequestMapping("/accidents")
public class AccidentController {

    private final AccidentService accidentService;

    @GetMapping
    public Iterable<Accident> getAllAccidents() {
        return accidentService.getAll();
    }

    @GetMapping("/{name}")
    public Accident getAccident(@PathVariable String name) {
        return accidentService.get(name);
    }

    @DeleteMapping("/{name}")
    public void deleteAccident(@PathVariable String name) { accidentService.remove(name); }

    @PutMapping("/{name}")
    public Accident updateAccident(
            @PathVariable String name,
            @Validated(Default.class) @RequestBody Accident accident)
    {
        accident.setName(name);

        return accidentService.update(accident);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Accident createAccident(@Validated @RequestBody Accident accident) { return accidentService.save(accident); }




}
