package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import com.ingsw.server.ratatouille23.Services.Interfaces.IUtenteService;

import lombok.RequiredArgsConstructor;

import com.ingsw.server.ratatouille23.Models.DTO.UtenteDTO;
import java.util.Optional;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;
import java.util.ArrayList;


@RestController
@RequiredArgsConstructor
@RequestMapping("/utente")
public class UtenteController {
    
    @Autowired
    private final ModelMapper modelMapper;

    @Autowired
    @Qualifier("UtenteService")
    private final IUtenteService utenteService;
    
    @GetMapping("/get/{username}/{password}")
    public UtenteDTO getByUsernameAndPassword(@PathVariable String username, @PathVariable String password){
        Optional<Utente> utente = utenteService.getByUsernameAndPassword(username, password);

        if(utente.isPresent())
            return modelMapper.map(utente.get(), UtenteDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Utente non trovato");
    }

    @GetMapping("/get/ristorante/{id}")
    public List<UtenteDTO> getByRistorante(@PathVariable Integer id){
        Optional<List<Utente>> utenti = utenteService.getByRistorante(id);

        if(utenti.isPresent()){
            List<UtenteDTO> utentiDTO = new ArrayList<UtenteDTO>();

            for(Utente utente : utenti.get())
                utentiDTO.add(modelMapper.map(utente, UtenteDTO.class));

            return utentiDTO;
        }
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Nessun utente trovato");
    }

    @PutMapping("/update")
    public void update(@RequestBody UtenteDTO utenteDTO) {

        Utente utente = new Utente();
        utente = modelMapper.map(utenteDTO, Utente.class);
        utente.setRistorante(new Ristorante(utenteDTO.getRistorante()));
        utenteService.update(utente);
    }

    @PostMapping("/add")
    public void add(@RequestBody UtenteDTO utenteDTO) {

        utenteService.add(utenteDTO);
    }

}
