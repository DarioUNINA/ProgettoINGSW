package com.ingsw.ratatouille23.client.View.Fragment;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.R;


public class ElementiMenuFragment extends Fragment {

    FloatingActionButton btnPrezzoDecrescente, btnPrezzoCrescente, btnOrdineAlfaCrescente, btnOrdineAlfaDecrescente;

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public ElementiMenuFragment() {
        // Required empty public constructor
    }

    public static ElementiMenuFragment newInstance(String param1, String param2) {
        ElementiMenuFragment fragment = new ElementiMenuFragment();
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
        View rootView =  inflater.inflate(R.layout.fragment_elementi_gm, container, false);

        btnPrezzoDecrescente = rootView.findViewById(R.id.btnPrezDecrescente);
        btnPrezzoCrescente = rootView.findViewById(R.id.btnPrezzoCrescente);
        btnOrdineAlfaDecrescente = rootView.findViewById(R.id.btnOrdineAlfaDecrescente);
        btnOrdineAlfaCrescente = rootView.findViewById(R.id.btnOrdineAlfaCrescente);

        btnPrezzoDecrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if(btnPrezzoDecrescente.isActivated()) {
                        btnPrezzoDecrescente.setActivated(false);
                        //modificare colori
                        btnPrezzoDecrescente.setBackgroundColor(0);
                    }else {
                        btnPrezzoDecrescente.setActivated(true);
                        Toast.makeText(getActivity(), "Prezzo Decrescente", Toast.LENGTH_SHORT).show();
                        btnPrezzoDecrescente.setBackgroundColor(0);
                        //modificare colori
                    }
                }
            });


            btnPrezzoCrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Toast.makeText(getActivity(), "Prezzo Crescente", Toast.LENGTH_SHORT).show();
                }
            });

            btnOrdineAlfaCrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Toast.makeText(getActivity(), "Ordine Alfabetico Crescente", Toast.LENGTH_SHORT).show();
                }
            });

        btnOrdineAlfaDecrescente.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(getActivity(), "Ordine Alfabetico Decrescente", Toast.LENGTH_SHORT).show();
            }
        });


        return  rootView;


    }


}