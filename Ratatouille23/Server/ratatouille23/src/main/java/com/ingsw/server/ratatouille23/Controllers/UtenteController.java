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
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;
import java.util.ArrayList;


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

    @PostMapping("/save")
    public void save(@RequestBody UtenteDTO utenteDTO){
        Utente utente = this.modelMapper.map(utenteDTO, Utente.class);

        utenteService.save(utente);
    }


}
