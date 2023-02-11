package com.ingsw.server.ratatouille23.Controllers;


import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import com.ingsw.server.ratatouille23.Services.Concretes.UtenteService;
import com.ingsw.server.ratatouille23.Services.Interfaces.IUtenteService;

import java.util.Optional;

@RestController
@RequestMapping("/utente")
public class UtenteController {
    
    @Autowired
    @Qualifier("mainUserService")
    private IUtenteService utenteService;
    
    @GetMapping("/get/{username}/{password}")
    public Utente getUtente(@PathVariable String username, @PathVariable String password){
        Optional<Utente> utente = utenteService.getUtente(username, password);

        if(utente.isPresent())
            return utente.get();
        else
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato");
    }

}
