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
@RequestMapping("/dipendente")
public class UtenteController {
    
    @Autowired
    @Qualifier("mainUserService")
    private IUtenteService utenteService;
    
    @GetMapping("/get/dipendente/{nome}/{password}")
    public Utente getByUsernameAndPassword(@PathVariable String nome, @PathVariable String password){
        Optional<Utente> utente = utenteService.getByUsernameAndPassword(nome, password);

        if(utente.isPresent())
            return utente.get();
        else
            // throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato");
            return new Utente("nome", "password");
    }

}
