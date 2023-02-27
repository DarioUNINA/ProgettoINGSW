package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.CategoriaService;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

public class CategoriaPresenter {

    private CategoriaService service;

    private CategorieFragment categorieFragment;

    public CategoriaPresenter(CategorieFragment categorieFragment){
        this.categorieFragment = categorieFragment;
        service = new CategoriaService();
    }

    public CategoriaPresenter(){
        service = new CategoriaService();
    }
}
