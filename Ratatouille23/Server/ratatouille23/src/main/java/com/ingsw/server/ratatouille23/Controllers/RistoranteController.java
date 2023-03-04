package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Services.Interfaces.IRistoranteService;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;
import com.ingsw.server.ratatouille23.Models.DTO.RistoranteDTO;

@RestController
@RequestMapping("/ristorante")
public class RistoranteController {

    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("RistoranteService")
    private IRistoranteService ristoranteService;

    @GetMapping("/get/{id}")
    public RistoranteDTO getById(@PathVariable("id") Integer id) {
        Optional<Ristorante> ristorante = ristoranteService.getById(id);

        if (ristorante.isPresent())
            return modelMapper.map(ristorante.get(), RistoranteDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ristorante non trovato");

    }
    
    @PutMapping("/update")
    public void update(@RequestBody RistoranteDTO ristoranteDTO) {
        System.out.println(ristoranteDTO.getIdRistorante());
        System.out.println(ristoranteDTO.getidMenu());
        Ristorante ristorante = modelMapper.map(ristoranteDTO, Ristorante.class);
        ristorante.setMenu(new Menu(ristoranteDTO.getidMenu()));
        ristoranteService.update(ristorante);
    }
}
