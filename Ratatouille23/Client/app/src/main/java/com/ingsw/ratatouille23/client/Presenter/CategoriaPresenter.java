package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.Class.CategoriaService;
import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Service.Callback;
public class CategoriaPresenter {

    private CategoriaService service;

    public CategoriaPresenter(){
        service = new CategoriaService();
    }
}
