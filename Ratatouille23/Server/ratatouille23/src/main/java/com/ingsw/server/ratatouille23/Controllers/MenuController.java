package com.ingsw.server.ratatouille23.Controllers;


import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import com.ingsw.server.ratatouille23.Services.Interfaces.IMenuService;
import com.ingsw.server.ratatouille23.Models.Entities.Menu;
import java.util.Optional;
import com.ingsw.server.ratatouille23.Models.DTO.MenuDTO;

@RestController
@RequestMapping("/menu")
public class MenuController {
    
    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    @Qualifier("MenuService")
    private IMenuService menuService;

    @GetMapping("get/{id}")
    public MenuDTO getById(@PathVariable("id") int id) {
        Optional<Menu> menu = menuService.getById(id);
        
        if (menu.isPresent())
            return modelMapper.map(menu.get(), MenuDTO.class);
        else
            throw new ResponseStatusException(HttpStatus.NO_CONTENT, "Menu not found");
    }
}
