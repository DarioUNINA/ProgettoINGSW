package com.ingsw.server.ratatouille23.Services.Concretes;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ingsw.server.ratatouille23.Models.DTO.OrdineDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import com.ingsw.server.ratatouille23.Repositories.OrdineRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IOrdineService;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import lombok.RequiredArgsConstructor;

import java.util.List;


@Service("OrdineService")
@RequiredArgsConstructor
public class OrdineService implements IOrdineService{

    @Autowired
    private OrdineRepository OrdineRepository;

    @Autowired
    private final ModelMapper modelMapper; 
    
    @Override
    public Optional<List<Ordine>> getByTavolo(Integer idTavolo){
        Tavolo tavolo = new Tavolo(idTavolo);
        return OrdineRepository.findByTavolo(tavolo);
    } 

    @Override
    public void save(Ordine ordine){
        OrdineRepository.save(ordine);
    }

    
    @Override
    public void delete(OrdineDTO ordineDTO) {
        Ordine o = modelMapper.map(ordineDTO, Ordine.class);
        OrdineRepository.delete(o);
    }

}
