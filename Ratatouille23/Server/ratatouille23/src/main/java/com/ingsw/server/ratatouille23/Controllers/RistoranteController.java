package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Services.Interfaces.IRistoranteService;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import java.util.Optional;

@RestController
@RequestMapping("/ristorante")
public class RistoranteController {

    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("RistoranteService")
    private IRistoranteService ristoranteService;

    @GetMapping("/get/{id}")
    public Ristorante getById(@PathVariable("id") Integer id) {

        Optional<Ristorante> ristorante = ristoranteService.getById(id);

        if (ristorante.isPresent())
            return ristorante.get();
        else
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Ristorante non trovato");

    }
    
}
