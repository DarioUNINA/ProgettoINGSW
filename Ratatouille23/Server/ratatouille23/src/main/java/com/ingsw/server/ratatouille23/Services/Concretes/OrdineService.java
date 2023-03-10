package com.ingsw.server.ratatouille23.Services.Concretes;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ingsw.server.ratatouille23.Models.DTO.OrdineDTO;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import com.ingsw.server.ratatouille23.Repositories.OrdineRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IOrdineService;
import java.util.Optional;
import java.sql.Date;

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
    public void save(OrdineDTO ordineDTO){
        Ordine ordine = modelMapper.map(ordineDTO, Ordine.class);
        Tavolo tavolo = new Tavolo(ordineDTO.getIdTavolo());
        ordine.setTavolo(tavolo);
        
        OrdineRepository.save(ordine);
    }

    
    @Override
    public void delete(OrdineDTO ordineDTO) {
        Ordine o = modelMapper.map(ordineDTO, Ordine.class);
        Tavolo tav = new Tavolo(ordineDTO.getIdTavolo());
        o.setTavolo(tav);
        OrdineRepository.delete(o);
    }

    @Override
    public Optional<Integer> getNewestByTavolo(Integer idTavolo) {
        return OrdineRepository.findNewestByTavolo(idTavolo);
    }

    @Override
    public Optional<Integer> getOrdiniTotali(String cameriere, String dataFrom, String dataTo) {
        System.out.println(dataFrom);
        return OrdineRepository.findOrdiniTotali(cameriere, Date.valueOf(dataFrom), Date.valueOf(dataTo));
    }

    @Override
    public Optional<List<Integer>> getOrdiniTotaliPerGiorno(String cameriere, String dataFrom, String dataTo) {
        return OrdineRepository.findOrdiniTotaliPerGiorno(cameriere, Date.valueOf(dataFrom), Date.valueOf(dataTo));
    }

    @Override
    public Optional<List<String>> getDate(String cameriere, String dataFrom, String dataTo) {
        return OrdineRepository.findDate(cameriere, Date.valueOf(dataFrom), Date.valueOf(dataTo));
    }

    @Override
    public Optional<Double> getIncasso(String cameriere, String dataFrom, String dataTo) {
        return OrdineRepository.findIncasso(cameriere, Date.valueOf(dataFrom), Date.valueOf(dataTo));
    }

    

}
