package com.ingsw.ratatouille23.client.Presenter;

import android.view.View;

import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.OrdineService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.FiltroDataFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.StatisticheFragment;

import java.util.ArrayList;

public class StatistichePresenter {
    private StatisticheFragment statisticheFragment;
    private OrdineService service;

    public StatistichePresenter(StatisticheFragment statisticheFragment){
        this.service = new OrdineService();
        this.statisticheFragment = statisticheFragment;
    }

    public void getStatistiche(){
        FiltroDataFragment fragment = ((HomeActivity)statisticheFragment.getActivity()).getGestionePersonaleFragment().getFiltroDataFragment();
        getIncasso(statisticheFragment.getUtenteSelected().getUsername(), fragment.getTxtFrom().getText().toString(), fragment.getTxtTo().getText().toString());
        getOrdiniTotali(statisticheFragment.getUtenteSelected().getUsername(), fragment.getTxtFrom().getText().toString(), fragment.getTxtTo().getText().toString());
        statisticheFragment.getTxtGuadagniSimbolo().setVisibility(View.VISIBLE);
        getChart(statisticheFragment.getUtenteSelected().getUsername(), fragment.getTxtFrom().getText().toString(), fragment.getTxtTo().getText().toString());
    }

    public void getChart(String cameriere, String dataFrom, String dataTo){
        service.getDate(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null) {
                    statisticheFragment.setGiorni((ArrayList<String>) o);
                    getOrdiniTotaliPerGiorno(cameriere, dataFrom, dataTo);
                }

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, cameriere, dataFrom, dataTo);
    }

    public void getOrdiniTotaliPerGiorno(String cameriere, String dataFrom, String dataTo){
        service.getOrdiniTotaliPerGiorno(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null) {
                    statisticheFragment.setNumeroOrdini((ArrayList<Integer>) o);
                    statisticheFragment.makeChart();
                }

            }

            @Override
            public void returnError(Throwable e) {

            }
        }, cameriere, dataFrom, dataTo);
    }

    public void getOrdiniTotali(String cameriere, String dataFrom, String dataTo ){
        service.getOrdiniTotali(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null)
                    statisticheFragment.getTxtTotOrdini().setText(String.valueOf((Integer) o));
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, cameriere, dataFrom, dataTo);
    }

    public void getIncasso(String cameriere, String dataFrom, String dataTo ){
        service.getIncasso(new Callback() {
            @Override
            public void returnResult(Object o) {
                if(o!=null)
                    statisticheFragment.getTxtTotGuadagni().setText(String.valueOf((Double) o));
                else
                    statisticheFragment.getTxtTotGuadagni().setText("0");
            }

            @Override
            public void returnError(Throwable e) {

            }
        }, cameriere, dataFrom, dataTo);
    }


}
