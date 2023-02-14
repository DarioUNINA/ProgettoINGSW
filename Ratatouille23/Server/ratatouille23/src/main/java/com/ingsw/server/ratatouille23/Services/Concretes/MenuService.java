package com.ingsw.server.ratatouille23.Services.Concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;
import com.ingsw.server.ratatouille23.Repositories.MenuRepository;
import com.ingsw.server.ratatouille23.Services.Interfaces.IMenuService;
import java.util.Optional;

@Service("MenuService")
public class MenuService implements IMenuService {
    
    @Autowired
    private MenuRepository menuRepository;

    @Override
    public Optional<Menu> getById(int id) {
        return menuRepository.findById(id);
    }
}
