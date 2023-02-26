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
import java.util.ArrayList;
import java.util.List;


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
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Categoria non trovata");
    }

    @GetMapping("/get/menu/{id}")
    public List<CategoriaDTO> getByMenu(@PathVariable("id") Integer id) {
        Optional<List<Categoria>> categorie = categoriaService.getByMenu(id);

        if (categorie.isPresent()){
            List<CategoriaDTO> categorieDTO = new ArrayList<CategoriaDTO>();
            for (Categoria categoria : categorie.get())
                categorieDTO.add(modelMapper.map(categoria, CategoriaDTO.class));

            return categorieDTO;

        }else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Nessuna categoria trovata");
    }

}
