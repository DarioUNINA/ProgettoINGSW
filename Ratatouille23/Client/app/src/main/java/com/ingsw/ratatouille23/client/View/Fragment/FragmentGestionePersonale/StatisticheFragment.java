package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale;

import android.graphics.Color;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.formatter.DefaultValueFormatter;
import com.github.mikephil.charting.formatter.IndexAxisValueFormatter;
import com.github.mikephil.charting.formatter.ValueFormatter;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.google.android.material.tabs.TabLayout;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Presenter.StatistichePresenter;
import com.ingsw.ratatouille23.client.R;

import java.util.ArrayList;
import java.util.Collections;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link StatisticheFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class StatisticheFragment extends Fragment {
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private String mParam1;
    private String mParam2;


    private FiltroDataFragment filtroDataFragment;

    private StatistichePresenter statistichePresenter;
    private ArrayList<String> giorni = new ArrayList<>();
    private ArrayList<Integer> numeroOrdini = new ArrayList<>();

    private ArrayList<BarEntry> barArraylist;

    private Utente utenteSelected;
    private TextView txtNomeCameriere, txtTotOrdini, txtTotGuadagni, txtGuadagniSimbolo;
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

        txtNomeCameriere = rootView.findViewById(R.id.txtCameriereStats);
        txtTotGuadagni = rootView.findViewById(R.id.txtTotaleGuadagni);
        txtTotOrdini = rootView.findViewById(R.id.txtTotaleOrdini);
        txtGuadagniSimbolo = rootView.findViewById(R.id.txtGuadagniSimbolo);

        txtGuadagniSimbolo.setVisibility(View.INVISIBLE);

        this.statistichePresenter = new StatistichePresenter(this);
        this.barArraylist = new ArrayList<BarEntry>();
        barChart = rootView.findViewById(R.id.bar_chart);



        return rootView;
    }



    public void makeChart() {

        barArraylist.clear();

        numeroOrdini.clear();
        giorni.clear();
        
        numeroOrdini.add(5);
        numeroOrdini.add(4);

        giorni.add("prova1");
        giorni.add("prova2");


//        for(Integer i: numeroOrdini)
//            System.out.println(i+"\n");
//
//        for(String s: giorni)
//            System.out.println(s+"\n");

        for(int i=0; i<numeroOrdini.size(); i++)
            barArraylist.add(new BarEntry(i, numeroOrdini.get(i), numeroOrdini.get(i)));


        barDataSet = new BarDataSet(barArraylist, "");
        barDataSet.setColors(ColorTemplate.MATERIAL_COLORS);
        barDataSet.setValueTextColor(Color.BLACK);
        barDataSet.setValueTextSize(20f);
        barDataSet.setValueFormatter(new DefaultValueFormatter(0));

        barData = new BarData(barDataSet);
        barChart.setFitBars(true);
        barChart.setData(barData);
        barChart.animateY(2000);
        barChart.animateY(2000);
        barChart.getDescription().setText("");

        barChart.setDragEnabled(true);
        barChart.setVisibleXRangeMaximum(2);


        XAxis xAxis = barChart.getXAxis();
        xAxis.setValueFormatter(new IndexAxisValueFormatter(giorni));
        xAxis.setCenterAxisLabels(false);
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setGranularity(1);
        xAxis.setGranularityEnabled(true);
        xAxis.setDrawGridLines(false);

        barDataSet.notifyDataSetChanged();
        barData.notifyDataChanged();
        barChart.notifyDataSetChanged();
        barChart.invalidate();

    }

    public TextView getTxtNomeCameriere() {
        return txtNomeCameriere;
    }

    public void setTxtNomeCameriere(TextView txtNomeCameriere) {
        this.txtNomeCameriere = txtNomeCameriere;
    }

    public TextView getTxtTotOrdini() {
        return txtTotOrdini;
    }

    public void setTxtTotOrdini(TextView txtTotOrdini) {
        this.txtTotOrdini = txtTotOrdini;
    }

    public TextView getTxtTotGuadagni() {
        return txtTotGuadagni;
    }

    public void setTxtTotGuadagni(TextView txtTotGuadagni) {
        this.txtTotGuadagni = txtTotGuadagni;
    }

    public ArrayList<String> getGiorni() {
        return giorni;
    }

    public void setGiorni(ArrayList<String> giorni) {
        this.giorni.clear();
        this.giorni.addAll(giorni);
    }

    public ArrayList<Integer> getNumeroOrdini() {
        return numeroOrdini;
    }

    public void setNumeroOrdini(ArrayList<Integer> numeroOrdini) {
        this.numeroOrdini.clear();
        this.numeroOrdini.addAll(numeroOrdini);
    }

    public Utente getUtenteSelected() {
        return utenteSelected;
    }

    public void setUtenteSelected(Utente utenteSelected) {
        this.utenteSelected = utenteSelected;
    }

    public TextView getTxtGuadagniSimbolo() {
        return txtGuadagniSimbolo;
    }

    public void setTxtGuadagniSimbolo(TextView txtGuadagniSimbolo) {
        this.txtGuadagniSimbolo = txtGuadagniSimbolo;
    }
}