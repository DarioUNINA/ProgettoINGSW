package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Services.Interfaces.ITavoloService;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.DTO.TavoloDTO;
import java.util.ArrayList;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;
import java.util.List;



@RestController
@RequestMapping("/tavolo")
public class TavoloController {

    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("TavoloService")
    private ITavoloService TavoloService;

    @GetMapping("/get/{id}")
    public TavoloDTO getById(@PathVariable("id") Integer id) {
        Optional<Tavolo> tavolo = TavoloService.getById(id);

        if (tavolo.isPresent())
            return modelMapper.map(tavolo.get(), TavoloDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Tavolo non trovato");

    }

    @GetMapping("/get/ristorante/{id}")
    public List<TavoloDTO> getByRistorante(@PathVariable("id") Integer id) {
        Optional<List<Tavolo>> tavoli = TavoloService.getByRistorante(new Ristorante(id));


        if (tavoli.isPresent()){
            List<TavoloDTO> tavoliDTO = new ArrayList<TavoloDTO>();

            for(Tavolo t : tavoli.get())
                tavoliDTO.add(modelMapper.map(t, TavoloDTO.class));

            return tavoliDTO;
        }else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Tavolo non trovato");

    }

    @GetMapping("/get/cameriere/{username}")
    public List<TavoloDTO> getByCameriereOrLibero(@PathVariable("username") String username) {
        Optional<List<Tavolo>> tavoli = TavoloService.getByCameriereOrLibero(username);
    
        if (tavoli.isPresent()){
            List<TavoloDTO> tavoliDTO = new ArrayList<TavoloDTO>();
    
            for(Tavolo t : tavoli.get())
                tavoliDTO.add(modelMapper.map(t, TavoloDTO.class));
    
            return tavoliDTO;
        }else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Tavolo non trovato");
    }





}
