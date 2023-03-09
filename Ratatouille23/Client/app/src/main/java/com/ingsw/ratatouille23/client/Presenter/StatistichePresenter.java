package com.ingsw.ratatouille23.client.Presenter;

import com.ingsw.ratatouille23.client.Service.OrdineService;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.StatisticheFragment;

public class StatistichePresenter {
    private StatisticheFragment statisticheFragment;
    private OrdineService ordineService;

    public StatistichePresenter(StatisticheFragment statisticheFragment){
        this.ordineService = new OrdineService();
        this.statisticheFragment = statisticheFragment;
    }



    public void setX(){

    }

    public void setY(){

    }
}
