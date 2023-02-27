package com.ingsw.ratatouille23.client.Presenter;

import android.view.View;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.OrdineService;
import com.ingsw.ratatouille23.client.View.Adapter.OrdineAdapter;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;

import java.util.ArrayList;
import java.util.List;

public class OrdinePresenter {
    private OrdineService service;
    private OrdiniFragment ordiniFragment;

    public OrdinePresenter(){
        service = new OrdineService();
    }

    public OrdinePresenter(OrdiniFragment ordiniFragment){
        this.ordiniFragment = ordiniFragment;
        service = new OrdineService();
    }

    public void getByTavolo(int idTavolo){

        service.getByTavolo(new Callback() {
            @Override
            public void returnResult(Object o) {

                if(o!=null) {
                    ordiniFragment.setOrdini((List<Ordine>) o);
                    ordiniFragment.setOrderAdapter(new OrdineAdapter((ArrayList<Ordine>) ordiniFragment.getOrdini(), ordiniFragment.getContext(), ordiniFragment.getOnOrdineCLickListner()));
                    ordiniFragment.getOrdiniRecyclerView().setAdapter(ordiniFragment.getOrderAdapter());
                    ordiniFragment.getOrdiniRecyclerView().setVisibility(View.VISIBLE);
                }

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, idTavolo);
    }

    public void create(Ordine ordine){

        service.create(new Callback() {
            @Override
            public void returnResult(Object o) {
                if((boolean)o)
                    System.out.println("creato");
                else
                    System.out.println("non creato");
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, ordine);
    }

}
