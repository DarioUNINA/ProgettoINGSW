package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.google.android.material.tabs.TabLayout;
import com.ingsw.ratatouille23.client.Presenter.StatistichePresenter;
import com.ingsw.ratatouille23.client.R;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link StatisticheFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class StatisticheFragment extends Fragment {

    private TabLayout tabLayout;
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private String mParam1;
    private String mParam2;


    private FiltroDataFragment filtroDataFragment;

    private StatistichePresenter statistichePresenter;
    private BarDataSet barDataSet;
    private BarData barData;
    private BarChart barChart;



    public StatisticheFragment() {
        // Required empty public constructor
    }

    public StatisticheFragment(FiltroDataFragment filtroDataFragment){

    }

    public static StatisticheFragment newInstance(String param1, String param2) {
        StatisticheFragment fragment = new StatisticheFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_statistiche, container, false);

        this.statistichePresenter = new StatistichePresenter(this);
        barChart = getView().findViewById(R.id.bar_chart);


        //inserisci cose

        return rootView;
    }
}