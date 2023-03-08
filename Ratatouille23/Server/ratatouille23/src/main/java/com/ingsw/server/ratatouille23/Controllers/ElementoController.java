package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;

import lombok.RequiredArgsConstructor;

import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;
import com.ingsw.server.ratatouille23.Models.DTO.ElementoDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import java.util.Optional;
import java.util.List;
import java.util.ArrayList;


@RestController
@RequiredArgsConstructor
@RequestMapping("/elemento")
public class ElementoController {

    @Autowired
    private final ModelMapper modelMapper;

    @Autowired
    @Qualifier("ElementoService")
    private final IElementoService elementoService;

    @Autowired
    @Qualifier("CategoriaService")
    private final ICategoriaService categoriaService;

    @GetMapping("/get/{id}")
    public ElementoDTO getById(@PathVariable("id") Integer id) {
        Optional<Elemento> elemento = elementoService.getById(id);

        if (elemento.isPresent())
            return modelMapper.map(elemento.get(), ElementoDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elemento non trovata");
    }

    @PostMapping("/add")
    public void save(@RequestBody ElementoDTO elementoDTO) {
        elementoService.save(elementoDTO);
    }


    @GetMapping("/get/categoria/{idCategoria}")
    public List<ElementoDTO> getByCategoria(@PathVariable("idCategoria") Integer idCategoria) {
        Optional<List<Elemento>> elementi = elementoService.getByCategoria(idCategoria);

        if (elementi.isPresent()) {
            List<ElementoDTO> elementiDTO = new ArrayList<ElementoDTO>();

            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        } else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");
    }

    @GetMapping("/get/categoria/{idCategoria}/PrezzoAsc")
    public List<ElementoDTO> getByCategoriaPrezzoAsc(@PathVariable("idCategoria") Integer idCategoria) {
        Optional<List<Elemento>> elementi = elementoService.getByCategoriaOrderByPrezzoAsc(idCategoria);

        if (elementi.isPresent()) {
            List<ElementoDTO> elementiDTO = new ArrayList<ElementoDTO>();

            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        } else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");
    }

    @GetMapping("/get/categoria/{idCategoria}/PrezzoDesc")
    public List<ElementoDTO> getByCategoriaPrezzoDesc(@PathVariable("idCategoria") Integer idCategoria) {
        Optional<List<Elemento>> elementi = elementoService.getByCategoriaOrderByPrezzoDesc(idCategoria);

        if (elementi.isPresent()) {
            List<ElementoDTO> elementiDTO = new ArrayList<ElementoDTO>();

            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        } else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");
    }

    @GetMapping("/get/categoria/{idCategoria}/NomeAsc")
    public List<ElementoDTO> getByCategoriaNomeAsc(@PathVariable("idCategoria") Integer idCategoria) {
        Optional<List<Elemento>> elementi = elementoService.getByCategoriaOrderByNomeAsc(idCategoria);

        if (elementi.isPresent()) {
            List<ElementoDTO> elementiDTO = new ArrayList<ElementoDTO>();

            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        } else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");
    }

    @GetMapping("/get/categoria/{idCategoria}/NomeDesc")
    public List<ElementoDTO> getByCategoriaNomeDesc(@PathVariable("idCategoria") Integer idCategoria) {
        Optional<List<Elemento>> elementi = elementoService.getByCategoriaOrderByNomeDesc(idCategoria);

        if (elementi.isPresent()) {
            List<ElementoDTO> elementiDTO = new ArrayList<ElementoDTO>();

            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        } else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");
    }


    @GetMapping("/get/ristorante/{id_ristorante}/categoria/{nome}")
    public List<ElementoDTO> getByNome(@PathVariable("id_ristorante") Integer id_ristorante, @PathVariable("nome") String nome){
        Optional<List<Elemento>> elementi = elementoService.getByNome(id_ristorante, nome);


        if (elementi.isPresent()) {
            List<ElementoDTO> elementiDTO = new ArrayList<ElementoDTO>();

            for (Elemento elemento : elementi.get())
                elementiDTO.add(modelMapper.map(elemento, ElementoDTO.class));

            return elementiDTO;
        } else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "elementi non trovati");

    }

    @GetMapping("/get/quantita/{id}/ordine/{idOrdine}")
    public int getQuantita(@PathVariable("id") Integer id, @PathVariable("idOrdine") Integer idOrdine) {
            
            return elementoService.getQuantita(id, idOrdine);
    }

    @DeleteMapping("/delete")
    public void delete(@RequestBody ElementoDTO elementoDTO) {
        elementoService.delete(elementoDTO);
    }

    @PutMapping("/update/ordine/{idOrdine}/elemento/{idElemento}/quantita/{quantita}")
    public void updateQuantita(@PathVariable("idOrdine") Integer idOrdine, @PathVariable("idElemento") Integer idElemento, @PathVariable("quantita") Integer quantita){
        elementoService.updateQuantita(idOrdine, idElemento, quantita);
    }
    
    @PutMapping("/remove/ordine/{idOrdine}/elemento/{idElemento}")
    public void deleteFromOrdine(@PathVariable(value="idOrdine")int idOrdine, @PathVariable(value="idElemento")int idElemento){
        elementoService.deleteFromOrdinazione(idOrdine, idElemento);
    }

    @PutMapping("/addElementoToOrdinazione/menu/{idMenu}/nomeCategoria/{nomeCategoria}/nomeElemento/{nomeElemento}/idOrdine/{idOrdine}")
    public void addElementoToOrdinazione(@PathVariable(value="idMenu")int idMenu, @PathVariable(value="nomeCategoria")String nomeCategoria, @PathVariable(value="nomeElemento")String nomeElemento, @PathVariable(value="idOrdine")int idOrdine){
        Categoria categoria = categoriaService.getByMenuAndNome(idMenu, nomeCategoria).get();
        Elemento elemento = elementoService.getByCategoriaAndNome(categoria, nomeElemento).get();

        elementoService.addToOrdinazione(idOrdine, elemento.getIdElemento());
    }

}
