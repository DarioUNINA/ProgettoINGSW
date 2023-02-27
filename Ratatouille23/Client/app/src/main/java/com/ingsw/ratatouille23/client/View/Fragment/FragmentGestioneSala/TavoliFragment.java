package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.Presenter.TavoloPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGSAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.TavoliAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link TavoliFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class TavoliFragment extends Fragment {


    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    private FloatingActionButton addElementoOrdine;

    private RecyclerView tavoliRecyclerView;

    private TavoliAdapter tavoliAdapter;
    private TavoliAdapter.OnTavoliClickListner onTavoliClickListner;


    private List<Tavolo> tavoli;
    private TavoloPresenter tavoloPresenter;

    public TavoliFragment() {
        // Required empty public constructor
    }


    public static TavoliFragment newInstance(String param1, String param2) {
        TavoliFragment fragment = new TavoliFragment();
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
        View rootView =  inflater.inflate(R.layout.fragment_tavoli, container, false);

        tavoloPresenter = new TavoloPresenter(TavoliFragment.this);

        tavoloPresenter.getTavoli();

        tavoliRecyclerView = (RecyclerView) rootView.findViewById(R.id.tavoliRecyclerView);

        tavoliAdapter = new TavoliAdapter((ArrayList<Tavolo>) tavoli, getContext(), onTavoliClickListner);

        LinearLayoutManager linearLayoutManager = new GridLayoutManager(getContext(), 2);
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        tavoliRecyclerView.setLayoutManager(linearLayoutManager);
        tavoliRecyclerView.setAdapter(tavoliAdapter);



        return rootView;
    }


}