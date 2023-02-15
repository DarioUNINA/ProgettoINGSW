package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Services.Interfaces.IOrdineService;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import java.util.Optional;
import java.util.ArrayList;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.DTO.OrdineDTO;

@RestController
@RequestMapping("/ordine")
public class OrdineController {

    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("OrdineService")
    private IOrdineService OrdineService;

    @GetMapping("/get/{id}")
    public List<OrdineDTO> getById(@PathVariable("id") Integer id) {
        Optional<List<Ordine>> ordini = OrdineService.getByTavolo(id);
        
        if (ordini.isPresent()){
            List<Ordine> ordiniList = ordini.get();
            List<OrdineDTO> ordiniDTO = new ArrayList<OrdineDTO>();
            
            for(Ordine ordine : ordiniList)
                ordiniDTO.add(modelMapper.map(ordine, OrdineDTO.class));

            return ordiniDTO;
            }
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Ordine non trovato");

    }
    
}
