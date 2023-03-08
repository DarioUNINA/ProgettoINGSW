package com.ingsw.ratatouille23.client.Presenter;

import static java.lang.Thread.sleep;

import android.widget.ArrayAdapter;

import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.ElementoService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGSAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoOrdineDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.TavoliFragment;

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
        Integer [][] matrix = new Integer[elementi.size()][2];

        for(int i =0; i<elementi.size(); i++) {
            matrix[i][0] = elementi.get(i).getIdElemento();
            matrix[i][1] = 0;
        }

        elementiGSAdapter.setQuantita(matrix);

         for(Elemento elemento: elementi){
            service.getQuantita(new Callback() {
                @Override
                public void returnResult(Object o) {
                    for(int i =0; i<elementi.size(); i++)
                        if(matrix[i][0] == elemento.getIdElemento())
                            matrix[i][1] = (Integer)o;

                    elementi.add(new Elemento());
                    elementi.remove(elementi.size()-1);
                    elementiGSAdapter.setQuantita(matrix);
                    elementiGSAdapter.setElementi(elementi, false);

                }

                @Override
                public void returnError(Throwable e) {
                        System.out.println(e.getMessage());
                }
            }, elemento, ordine);

        }
    }

    public void updateQuantita(int idOrdine, int idElemento, int quantita){
        service.updateQuantita(new Callback() {
            @Override
            public void returnResult(Object o) {
                if((boolean) o){
                    System.out.println("update effettuato");
                }
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idOrdine, idElemento, quantita);
    }

    public void deleteFromOrdine(int idOrdine, List<Elemento> elementi){
        for(Elemento e: elementi) {
            service.removeFromOrdinazione(new Callback() {
                @Override
                public void returnResult(Object o) {
                    if ((boolean) o)
                        System.out.println("Rimozione effettuata");
                }

                @Override
                public void returnError(Throwable e) {

                }
            }, idOrdine, e.getIdElemento());
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

    public void getAllChangeOrdine(int id_ristorante, String nome, List<Elemento> elementi){
        service.getByNome(new Callback() {
            @Override
            public void returnResult(Object o) {
                if (o != null) {
                    ArrayList<String> listElementoString = new ArrayList<String>();
                    for (Elemento elem : (ArrayList<Elemento>) o)
                        listElementoString.add(elem.getNome());

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
        CategoriaPresenter categoriaPresenter = new CategoriaPresenter(((HomeActivity)elementiMenuFragment.getActivity()).getGestioneMenuFragment().getCategorieFragment());
        categoriaPresenter.getByMenu(((HomeActivity)elementiMenuFragment.getActivity()).getRistorante().getIdMenu());
        elementiMenuFragment.getBtnAnnullaRimozione().callOnClick();
        elementiMenuFragment.getElementiGMAdapter().getCancellaElementi().clear();
    }

    public void create(Elemento elemento){
        service.create(new Callback() {
            @Override
            public void returnResult(Object o) {
                if((boolean) o)
                    getElementiByNomeDesc(elemento.getIdCategoria());
                else
                    System.out.println("errore");

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, elemento);

        getElementiByNomeDesc(elemento.getIdCategoria());
    }

    public void addToOrdinazione(int idMenu, String nomeCategoria, String nomeElemento, int idOrdine, ElementiGSFragment fragment){

        service.addToOrdinazione(new Callback() {
            @Override
            public void returnResult(Object o) {
                TavoloPresenter tavoloPresenter = new TavoloPresenter(((HomeActivity)fragment.getActivity()).getGestioneSala().getTavoliFragment());
                tavoloPresenter.getTavoli();
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idMenu, nomeCategoria, nomeElemento, idOrdine);



    }

}
