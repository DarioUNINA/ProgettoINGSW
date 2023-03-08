package com.ingsw.ratatouille23.client.Presenter;

import android.view.View;

import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.OrdineService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.OrdineAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;

import java.util.ArrayList;
import java.util.List;

public class OrdinePresenter {
    private OrdineService service;
    private OrdiniFragment ordiniFragment;

    private AddOrderDialog addOrderDialog;

    public OrdinePresenter(){
        service = new OrdineService();
    }

    public OrdinePresenter(OrdiniFragment ordiniFragment){
        this.ordiniFragment = ordiniFragment;
        service = new OrdineService();
    }

    public OrdinePresenter(AddOrderDialog addOrderDialog){
        this.addOrderDialog = addOrderDialog;
        this.service = new OrdineService();
    }

    public void getByTavolo(int idTavolo){

        service.getByTavolo(new Callback() {
            @Override
            public void returnResult(Object o) {

                if(o!=null) {
                }

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idTavolo);
    }



    public void create(){

        service.create(new Callback() {
            @Override
            public void returnResult(Object o) {
                if((boolean)o)
                    setNewest();
                else
                    System.out.println("ordine non creato");
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, addOrderDialog.getNewOrdine());
    }

    public void setNewest(){
        service.getIdNewestbyTavolo(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null)
                    addOrderDialog.getNewOrdine().setIdOrdine((Integer)o);
                else
                    System.out.println("errore durante il retrieve dell' ordine");

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, addOrderDialog.getIdTavolo());
    }
    public void delete(List<Ordine> ordine){
        for(Ordine o: ordine){
            service.delete(new Callback() {
                @Override
                public void returnResult(Object o) {
                }

                @Override
                public void returnError(Throwable e) {

                }
            }, o);
            ordiniFragment.getOrdineAdapter().getOrdini().remove(o);
            ordiniFragment.getOrdineAdapter().notifyDataSetChanged();
        }
        TavoloPresenter tavoloPresenter = new TavoloPresenter(((HomeActivity)ordiniFragment.getActivity()).getGestioneSala().getTavoliFragment());
        tavoloPresenter.getTavoli();
        ordiniFragment.getBtnAnnullaRimozioneOrdine().callOnClick();
        ordiniFragment.getOrdineAdapter().getCancellaOrdini().clear();
    }



}
