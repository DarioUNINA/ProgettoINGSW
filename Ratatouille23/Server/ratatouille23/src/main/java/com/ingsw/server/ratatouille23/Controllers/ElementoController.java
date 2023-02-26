package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;
import com.ingsw.server.ratatouille23.Models.DTO.ElementoDTO;
import java.util.Optional;
import java.util.List;
import java.util.ArrayList;


@RestController
@RequestMapping("/elemento")
public class ElementoController {
    
    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    @Qualifier("ElementoService")
    private IElementoService elementoService;

    @GetMapping("/get/{id}")
    public ElementoDTO getById(@PathVariable("id") Integer id) {
        Optional<Elemento> elemento = elementoService.getById(id);

        if (elemento.isPresent())
            return modelMapper.map(elemento.get(), ElementoDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elemento non trovata");
    }


    @GetMapping("/get/categoria/{idCategoria}")
    public List<ElementoDTO> getByCategoria(@PathVariable("idCategoria") Integer idCategoria) {
        Optional<List<Elemento>> elementi = elementoService.getByCategoria(idCategoria);

        if (elementi.isPresent()){
            List<ElementoDTO> elementiDTO = new ArrayList<>();
            
            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        }
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");
    }

}