package com.ingsw.ratatouille23.client.Presenter;

import android.widget.ArrayAdapter;

import com.ingsw.ratatouille23.client.Model.Allergene;

import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Service.AllergeneService;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.View.Adapter.AllergeniAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;

import java.util.ArrayList;

public class AllergenePresenter {

    private AllergeneService service;
    private AddElementoMenuDialog addElementoMenuDialog;

    public AllergenePresenter(){
        service = new AllergeneService();
    }

    public AllergenePresenter(AddElementoMenuDialog addElementoMenuDialog){
        this.addElementoMenuDialog = addElementoMenuDialog;
        service = new AllergeneService();
    }


    public void getAll(){
        service.getAll(new Callback() {
            @Override
            public void returnResult(Object o) {

                if(o!=null) {
                    ArrayList<Allergene> listAllergene = new ArrayList<Allergene>();
                    for(Allergene allerg: (ArrayList<Allergene>) o){
                        listAllergene.add(allerg);
                    }
                    addElementoMenuDialog.getAllergeniAdapter().setAllergeneList(listAllergene);
                }
            }
            @Override
            public void returnError(Throwable e) {
            }
        });
    }

}
