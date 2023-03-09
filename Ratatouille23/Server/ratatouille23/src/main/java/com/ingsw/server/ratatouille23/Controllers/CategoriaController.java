package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
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

    @PostMapping("/add")
    public void save(@RequestBody CategoriaDTO categoriaDTO) {
        categoriaService.save(categoriaDTO);
    }

    @DeleteMapping("/delete")
    public void delete(@RequestBody CategoriaDTO categoriaDTO) {
        categoriaService.delete(categoriaDTO);
    }


    @GetMapping("get/{id}/order")
    public List<CategoriaDTO> getCategoryByMenuIdOrderByAlimentAndPosition(@PathVariable Integer id){
        List<Categoria> categoryList = categoriaService.getCategoryByMenuIdOrderByAlimentAndPosition(id);

        List<CategoriaDTO> categoryDTO = new ArrayList<>();
        for (Categoria category: categoryList) {
            categoryDTO.add(convertDTO(category));
        }

        return  categoryDTO;
    }

    private CategoriaDTO convertDTO(Categoria category) {
        modelMapper.getConfiguration()
                .setMatchingStrategy(MatchingStrategies.LOOSE);
        CategoriaDTO categoryDTO = new CategoriaDTO();
        categoryDTO = modelMapper.map(category, CategoriaDTO.class);

        Integer menu_id = category.getMenu().getIdMenu();
        categoryDTO.setIdMenu(menu_id);

        return categoryDTO;
    }

}
