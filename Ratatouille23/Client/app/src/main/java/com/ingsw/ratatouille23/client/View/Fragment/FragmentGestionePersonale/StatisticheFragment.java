package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale;

import android.graphics.Color;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.formatter.DefaultValueFormatter;
import com.github.mikephil.charting.formatter.IndexAxisValueFormatter;
import com.github.mikephil.charting.utils.ColorTemplate;
import com.google.android.material.tabs.TabLayout;
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

    private TabLayout tabLayout;
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";
    private String mParam1;
    private String mParam2;


    private FiltroDataFragment filtroDataFragment;

    private StatistichePresenter statistichePresenter;

    private ArrayList<BarEntry> barArraylist;
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
        this.barArraylist = new ArrayList<BarEntry>();
        barChart = rootView.findViewById(R.id.bar_chart);

        createChart();

        return rootView;
    }



    public void createChart() {

        barArraylist.clear();


//        int i = 0;

//        for(Element element : elementArrayList){
//            barEntryArrayList.add(new BarEntry(i, element.getQuantityStats(), element));
//            i += 1;
//        }

        barArraylist.add(new BarEntry(0, 10, new Object()));
        barArraylist.add(new BarEntry(1, 20, new Object()));



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


        ArrayList<String> elementNames = new ArrayList<>();

        elementNames.add("nome1");
        elementNames.add("nome2");
        elementNames.add("nome3");

        XAxis xAxis = barChart.getXAxis();
        xAxis.setValueFormatter(new IndexAxisValueFormatter(elementNames));
        xAxis.setCenterAxisLabels(false);
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setGranularity(1);
        xAxis.setGranularityEnabled(true);
        xAxis.setDrawGridLines(false);


    }

}