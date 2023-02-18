package com.ingsw.ratatouille23.client.View;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.ingsw.ratatouille23.client.R;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link GestioneSalaFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class GestioneSalaFragment extends Fragment {

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    public GestioneSalaFragment() {
        // Required empty public constructor
    }

    public static GestioneSalaFragment newInstance(String param1, String param2) {
        GestioneSalaFragment fragment = new GestioneSalaFragment();
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

        FragmentManager fragmentManager = getActivity().getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();

        fragmentTransaction.replace(R.id.tavoli_layout, new TavoliFragment());
        fragmentTransaction.add(R.id.ordini_layout, new OrdiniFragment());
        fragmentTransaction.add(R.id.elementi_GM_layout, new ElementiGSFragment());
        fragmentTransaction.commit();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        View rootView = inflater.inflate(R.layout.fragment_gestione_sala, container, false);

        //inserisci cose

        return rootView;
    }


}