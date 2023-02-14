package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import com.ingsw.server.ratatouille23.Services.Interfaces.IUtenteService;
import com.ingsw.server.ratatouille23.Models.DTO.UtenteDTO;
import java.util.Optional;

@RestController
@RequestMapping("/utente")
public class UtenteController {
    
    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("UtenteService")
    private IUtenteService utenteService;
    
    @GetMapping("/get/{username}/{password}")
    public UtenteDTO getByUsernameAndPassword(@PathVariable String username, @PathVariable String password){
        Optional<Utente> utente = utenteService.getByUsernameAndPassword(username, password);

        if(utente.isPresent())
            return modelMapper.map(utente.get(), UtenteDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato");
    }

}
