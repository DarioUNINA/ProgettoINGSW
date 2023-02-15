package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import com.ingsw.server.ratatouille23.Repositories.TavoloRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.ITavoloService;
import java.util.Optional;


@Service("TavoloService")
public class TavoloService implements ITavoloService{

    @Autowired
    private TavoloRepository TavoloRepository;

    @Override
    public Optional<Tavolo> getById(Integer idTavolo){
        return TavoloRepository.findById(idTavolo);
    } 
}