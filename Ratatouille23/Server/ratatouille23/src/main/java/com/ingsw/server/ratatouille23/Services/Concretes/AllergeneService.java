package com.ingsw.server.ratatouille23.Services.Concretes;

import com.ingsw.server.ratatouille23.Services.Interfaces.IAllergeneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Allergene;
import com.ingsw.server.ratatouille23.Repositories.AllergeneRepository;
import java.util.Optional;

@Service("AllergeneService")
public class AllergeneService implements IAllergeneService{
    
    @Autowired
    private AllergeneRepository allergeneRepository;

    @Override
    public Optional<Allergene> getByNome(String nome) {
        return allergeneRepository.findByNome(nome);
    }
}
