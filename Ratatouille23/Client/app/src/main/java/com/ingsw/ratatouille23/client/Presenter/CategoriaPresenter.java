package com.ingsw.ratatouille23.client.Presenter;

import android.widget.ArrayAdapter;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.CategoriaService;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Adapter.CategoriaAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoOrdineDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;

public class CategoriaPresenter {

    private CategoriaService service;

    private CategorieFragment categorieFragment;

    AddOrderDialog addOrderDialog;
    AddElementoOrdineDialog addElementoOrdineDialog;

    public CategoriaPresenter(CategorieFragment categorieFragment){
        this.categorieFragment = categorieFragment;
        service = new CategoriaService();
    }
    public CategoriaPresenter(AddOrderDialog addOrderDialog){
        this.addOrderDialog = addOrderDialog;
        service = new CategoriaService();
    }

    public CategoriaPresenter(AddElementoOrdineDialog addElementoOrdineDialog){
        this.addElementoOrdineDialog = addElementoOrdineDialog;
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
                categorieFragment.setCategoriaAdapter(new CategoriaAdapter((ArrayList<Categoria>) o,
                        categorieFragment.getContext(),categorieFragment.getOnCategoriaClickListner(),
                        categorieFragment, false));
                categorieFragment.getCategoriaAdapter().notifyDataSetChanged();
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idMenu);
    }

    public void getAllSpinnerChangeOrdine(int idMenu){
        service.getByIdMenu(new Callback() {
            @Override
            public void returnResult(Object o) {

                if(o!=null) {
                    ArrayList<String> listCategoriaString = new ArrayList<String>();
                    for(Categoria cat: (ArrayList<Categoria>) o){
                        listCategoriaString.add(cat.getNome());
                    }
                    addElementoOrdineDialog.getSpinnerCategoriaNewOrdine().
                            setAdapter(new ArrayAdapter<String>(addElementoOrdineDialog.getContext(),
                                    R.layout.spinner_item, listCategoriaString));
                }

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idMenu);
    }
    public void getAllSpinnerNuovoOrdine(int idMenu){
        service.getByIdMenu(new Callback() {
            @Override
            public void returnResult(Object o) {

                if(o!=null) {
                    ArrayList<String> listCategoriaString = new ArrayList<String>();
                    for(Categoria cat: (ArrayList<Categoria>) o){
                        listCategoriaString.add(cat.getNome());
                    }
                    addOrderDialog.getSpinnerCategoriaOrdine().
                            setAdapter(new ArrayAdapter<String>(addOrderDialog.getContext(),
                                    R.layout.spinner_item, listCategoriaString));
                }

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idMenu);
    }

    public void create(int idMenu, String categoria){

        service.create(new Callback() {
            @Override
            public void returnResult(Object o) {
                if((boolean) o)
                    getByMenu(idMenu);
                else
                    System.out.println("errore");

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idMenu, categoria);

    }
}
