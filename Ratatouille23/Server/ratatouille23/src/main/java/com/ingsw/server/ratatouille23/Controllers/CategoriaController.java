package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;
import com.ingsw.server.ratatouille23.Models.DTO.CategoriaDTO;
import java.util.Optional;

@RestController
@RequestMapping("/categoria")
public class CategoriaController {
    
    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    @Qualifier("CategoriaService")
    private ICategoriaService categoriaService;

    @GetMapping("/get/{id}")
    public CategoriaDTO getById(@PathVariable("id") Integer id) {
        Optional<Categoria> categoria = categoriaService.getById(id);
        if (categoria.isPresent())
            return modelMapper.map(categoria.get(), CategoriaDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Categoria non trovata");
    }


}
