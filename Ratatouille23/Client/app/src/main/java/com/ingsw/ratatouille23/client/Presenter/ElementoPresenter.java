package com.ingsw.ratatouille23.client.Presenter;

import android.widget.ArrayAdapter;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoOrdineDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.ArrayList;


public class ElementoPresenter {

    private ElementoService service;
    private ElementiMenuFragment elementiMenuFragment;
    private ElementiGSFragment elementiGSFragment;

    private AddElementoOrdineDialog addElementoOrdineDialog;

    private AddOrderDialog addOrderDialog;
    public ElementoPresenter(){
        service = new ElementoService();
    }

    public ElementoPresenter(AddElementoOrdineDialog addElementoOrdineDialog){
        this.addElementoOrdineDialog = addElementoOrdineDialog;
        service = new ElementoService();
    }

    public ElementoPresenter(AddOrderDialog addOrderDialog){
        this.addOrderDialog = addOrderDialog;
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

    public void getAllChangeOrdine(int id_ristorante, String nome){
        service.getByNome(new Callback() {
            @Override
            public void returnResult(Object o) {
                if (o != null) {
                    ArrayList<String> listElementoString = new ArrayList<String>();
                    for (Elemento elem : (ArrayList<Elemento>) o) {
                        listElementoString.add(elem.getNome());
                    }
                    addElementoOrdineDialog.getSpinnerElementoNewOrdine().
                            setAdapter(new ArrayAdapter<String>(addElementoOrdineDialog.getContext(),
                                    R.layout.spinner_item, listElementoString));
                }
            }
            @Override
            public void returnError(Throwable e) {

            }
        }, id_ristorante, nome);
    }

    public void getAllNuovoOrdine(int id_ristorante, String nome){
        service.getByNome(new Callback() {
            @Override
            public void returnResult(Object o) {
                if (o != null) {
                    ArrayList<String> listElementoString = new ArrayList<String>();
                    for (Elemento elem : (ArrayList<Elemento>) o) {
                        listElementoString.add(elem.getNome());
                    }
                    addOrderDialog.getSpinnerElementoOrdine().
                            setAdapter(new ArrayAdapter<String>(addOrderDialog.getContext(),
                                    R.layout.spinner_item, listElementoString));
                }
            }
            @Override
            public void returnError(Throwable e) {

            }
        }, id_ristorante, nome);
    }
}
