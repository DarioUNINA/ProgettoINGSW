package com.ingsw.server.ratatouille23.Controllers;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Models.Entities.Allergene;
import com.ingsw.server.ratatouille23.Services.Interfaces.IAllergeneService;
import com.ingsw.server.ratatouille23.Models.DTO.AllergeneDTO;
import java.util.Optional;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/allergene")
public class AllergeneController {
    
    @Autowired
    private ModelMapper modelMapper;


    @Autowired
    @Qualifier("AllergeneService")
    private IAllergeneService AllergeneService;
    
    @GetMapping("/get/{nome}")
    public AllergeneDTO getByUsernameAndPassword(@PathVariable String nome){
        Optional<Allergene> Allergene = AllergeneService.getByNome(nome);

        if(Allergene.isPresent())
            return modelMapper.map(Allergene.get(), AllergeneDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Allergene non trovato");
    }

    @GetMapping("/get")
    public List<AllergeneDTO> getAll(){
        List<Allergene> Allergeni = AllergeneService.getAll();

        List<AllergeneDTO> AllergeniDTO = new ArrayList<AllergeneDTO>();

        for(Allergene a : Allergeni)
            AllergeniDTO.add(modelMapper.map(a, AllergeneDTO.class));

        return AllergeniDTO;
    }

}
