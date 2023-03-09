package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.OpenFoodService;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.OpenFoodService;

import java.util.ArrayList;
import java.util.List;
public class OpenFoodPresenter {

    private OpenFoodService openFoodService;

    public OpenFoodPresenter() {
        this.openFoodService = new OpenFoodService();
    }

    public void getProductList(String name){
        openFoodService.getProductList(new Callback() {
            @Override
            public void returnResult(Object o) {
                String string = (String) o;
                ArrayList<String> productNameList = new ArrayList<>();

                int inizio, fine, i=0;

                while(i<string.length()){

                    if (string.charAt(i) == '[') {
                        i++;
                        while(string.charAt(i) != ']'){
                            while(string.charAt(i) != ':') {
                                i++;
                            }
                            inizio = i + 2;

                            while(string.charAt(i) != '}') {
                                i++;
                            }
                            fine = i - 2;

                            if(fine>inizio){
                                String subStr = string.substring(inizio, fine+1);
                                productNameList.add(subStr);
                            }
                            else{
                                break;
                            }

                            i++;
                        }
                        break;
                    }

                    i++;

                }

                //CARICA ROBA NELLA GUI ATTRAVERSO productNameList (vedi classe ElementCreateDialog di Gianmarco)
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println(e);
            }
        },name);
    }

    public void getDescription(String name){
        openFoodService.getDescription(new Callback() {
            @Override
            public void returnResult(Object o) {
                String string = (String) o;
                String subStr = "";

                int inizio, fine, i=0;

                while(i<string.length()){
                    if (string.charAt(i) == '[') {
                        i++;
                        while(string.charAt(i) != ']'){

                            while(string.charAt(i) != '"') {
                                i++;
                            }
                            i++;

                            if(string.charAt(i) == 'g'){

                                while(string.charAt(i) != ':') {
                                    i++;
                                }
                                inizio = i + 2;

                                i = inizio;
                                while(string.charAt(i) != '"') {
                                    i++;
                                }
                                fine = i - 1;

                                if(fine>inizio){
                                    subStr = string.substring(inizio, fine+1);
                                }
                                break;
                            }
                            else{
                                while(string.charAt(i) != '}') {
                                    i++;
                                }
                                i++;
                            }

                        }
                        break;
                    }

                    i++;
                }

               //FAI ROBA NELL INTERFACCIA GRAFICA CON SUBSTR (vedi classe ElementCreateDialog di Gianmarco)
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println(e);
            }
        },name);
    }
}
