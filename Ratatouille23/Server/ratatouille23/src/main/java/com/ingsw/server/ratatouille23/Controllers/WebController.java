package com.ingsw.server.ratatouille23.Controllers;

import com.ingsw.server.ratatouille23.Models.Entities.Categoria;
import com.ingsw.server.ratatouille23.Models.Entities.Elemento;
import com.ingsw.server.ratatouille23.Models.Entities.Allergene;
import com.ingsw.server.ratatouille23.Services.Interfaces.IAllergeneService;
import com.ingsw.server.ratatouille23.Services.Interfaces.ICategoriaService;
import com.ingsw.server.ratatouille23.Services.Interfaces.IElementoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/web")
public class WebController {

    @Autowired
    @Qualifier("CategoriaService")
    private ICategoriaService categoriaService;

    @Autowired
    @Qualifier("ElementoService")
    private IElementoService elementoService;


    @Autowired
    @Qualifier("AllergeneService")
    private IAllergeneService allergeneService;

    @GetMapping("/qrcode")
    public String getById(@RequestParam(name = "id") Integer id, Model model){
        List<Categoria> categoryList = categoriaService.getCategoryByMenuIdOrderByAlimentAndPosition(id);
        List<Elemento> elementListTotal = new ArrayList<>();

        model.addAttribute("categories",categoryList);

//        for (Categoria categoria: categoryList) {
//            List<Elemento> elementList = elementoService.getByCategoria(categoria.getIdCategoria());
//            elementListTotal.addAll(elementList);
//        }

        model.addAttribute("elements",elementListTotal);

        return "qrcode";
    }

}