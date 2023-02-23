package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.CategoriaService;

public class CategoriaPresenter {

    private CategoriaService service;

    public CategoriaPresenter(){
        service = new CategoriaService();
    }
}
