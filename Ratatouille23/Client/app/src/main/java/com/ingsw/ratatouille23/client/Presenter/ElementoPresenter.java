package com.ingsw.ratatouille23.client.Presenter;

import static java.lang.Thread.sleep;

import android.view.View;
import android.widget.ArrayAdapter;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGSAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoOrdineDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.ArrayList;
import java.util.List;


public class ElementoPresenter {

    private ElementoService service;
    private ElementiMenuFragment elementiMenuFragment;
    private ElementiGSFragment elementiGSFragment;

    private ElementiGSAdapter elementiGSAdapter;

    private AddElementoOrdineDialog addElementoOrdineDialog;

    private AddOrderDialog addOrderDialog;
    public ElementoPresenter(){
        service = new ElementoService();
    }

    public ElementoPresenter(AddElementoOrdineDialog addElementoOrdineDialog){
        this.addElementoOrdineDialog = addElementoOrdineDialog;
        service = new ElementoService();
    }

    public ElementoPresenter(ElementiGSAdapter elementiGSAdapter){
        this.elementiGSAdapter = elementiGSAdapter;
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

    public void getQuantita(List<Elemento> elementi, Ordine ordine){
        List<Integer> quantita = new ArrayList<Integer>();

        for(Elemento elemento: elementi) {
            service.getQuantita(new Callback() {
                @Override
                public void returnResult(Object o) {
                    quantita.add((Integer)o);
                    elementiGSAdapter.addQuantita((Integer) o, elementi);

                }

                @Override
                public void returnError(Throwable e) {
                        System.out.println(e.getMessage());
                }
            }, elemento, ordine);
        }
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
                    listElementoString.add("");
                    for (Elemento elem : (ArrayList<Elemento>) o) {
                        listElementoString.add(elem.getNome());
                        addOrderDialog.getElementi().add(elem);
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

    public void delete(List<Elemento> elemento){
        for(Elemento e: elemento){
            service.delete(new Callback() {
                @Override
                public void returnResult(Object o) {
                }

                @Override
                public void returnError(Throwable e) {

                }
            }, e);
            elementiMenuFragment.getElementiGMAdapter().getElementi().remove(e);
            elementiMenuFragment.getElementiGMAdapter().notifyDataSetChanged();
        }
        elementiMenuFragment.getBtnAnnullaRimozione().callOnClick();
        elementiMenuFragment.getElementiGMAdapter().getCancellaElementi().clear();
    }
}
