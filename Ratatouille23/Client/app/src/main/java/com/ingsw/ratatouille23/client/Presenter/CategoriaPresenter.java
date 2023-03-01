package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.CategoriaService;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Adapter.CategoriaAdapter;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;

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


    public void getByMenu(int idMenu){
        service.getByIdMenu(new Callback() {
            @Override
            public void returnResult(Object o) {
            if(o!=null)
                //categorieFragment.setCategoriaAdapter(new CategoriaAdapter((ArrayList<Categoria>) o, categorieFragment.getContext(),categorieFragment.getCategoriaAdapter().getOnCategoriaClickListner(), categorieFragment, false));

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idMenu);
    }
}
