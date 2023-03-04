package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Tavolo;
import com.ingsw.server.ratatouille23.Repositories.TavoloRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.ITavoloService;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.Entities.Utente;
import java.util.List;
import com.ingsw.server.ratatouille23.Models.Entities.Ristorante;


@Service("TavoloService")
public class TavoloService implements ITavoloService{

    @Autowired
    private TavoloRepository TavoloRepository;

    @Override
    public Optional<Tavolo> getById(Integer idTavolo){
        return TavoloRepository.findById(idTavolo);
    } 

    @Override
    public Optional<List<Tavolo>> getByRistorante(Ristorante ristorante){
        return TavoloRepository.findByRistorante(ristorante);
    }

    @Override
    public Optional<List<Tavolo>> getByCameriere(Utente cameriere){
        return TavoloRepository.findByCameriere(cameriere);
    }

    @Override
    public Optional<List<Tavolo>> getByCameriereOrLibero(String cameriere){
        return TavoloRepository.findByCameriereOrLibero(cameriere);
    }

    @Override
    public void update(Tavolo tavolo){
        TavoloRepository.save(tavolo);
    }
    
}