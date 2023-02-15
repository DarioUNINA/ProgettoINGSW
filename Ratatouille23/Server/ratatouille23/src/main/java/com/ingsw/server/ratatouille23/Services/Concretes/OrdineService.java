package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Ordine;
import com.ingsw.server.ratatouille23.Repositories.OrdineRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IOrdineService;
import java.util.Optional;
import java.util.List;

@Service("OrdineService")
public class OrdineService implements IOrdineService{

    @Autowired
    private OrdineRepository OrdineRepository;

    @Override
    public Optional<List<Ordine>> getByTavolo(Integer idTavolo){
        return OrdineRepository.findByTavolo(idTavolo);
    } 
}
