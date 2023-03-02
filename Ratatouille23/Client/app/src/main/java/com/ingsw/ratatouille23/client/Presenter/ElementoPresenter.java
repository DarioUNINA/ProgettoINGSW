package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.ArrayList;


public class ElementoPresenter {

    private ElementoService service;
    private ElementiMenuFragment elementiMenuFragment;
    private ElementiGSFragment elementiGSFragment;

    public ElementoPresenter(){
        service = new ElementoService();
    }

    public ElementoPresenter(ElementiMenuFragment elementiMenuFragment){
        this.elementiMenuFragment = elementiMenuFragment;
        service = new ElementoService();
    }

    public ElementoPresenter(ElementiGSFragment elementiGSFragment){
        this.elementiGSFragment = elementiGSFragment;
        service = new ElementoService();
    }

    public void getElementiByPrezzoAsc(int idCategoria){
        service.getByCategoriaOrderByPrezzoAsc(new Callback() {
            @Override
            public void returnResult(Object o) {
                elementiMenuFragment.getElementiGMAdapter().setElementi((ArrayList<Elemento>) o, false);
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idCategoria);
    }

    public void getElementiByPrezzoDesc(int idCategoria){
        service.getByCategoriaOrderByPrezzoDesc(new Callback() {
            @Override
            public void returnResult(Object o) {
                elementiMenuFragment.getElementiGMAdapter().setElementi((ArrayList<Elemento>) o, false);
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idCategoria);
    }

    public void getElementiByNomeAsc(int idCategoria){
        service.getByCategoriaOrderByNomeAsc(new Callback() {
            @Override
            public void returnResult(Object o) {
                elementiMenuFragment.getElementiGMAdapter().setElementi((ArrayList<Elemento>) o, false);
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idCategoria);
    }

    public void getElementiByNomeDesc(int idCategoria){
        service.getByCategoriaOrderByNomeDesc(new Callback() {
            @Override
            public void returnResult(Object o) {
                elementiMenuFragment.getElementiGMAdapter().setElementi((ArrayList<Elemento>) o, false);
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idCategoria);
    }
}
