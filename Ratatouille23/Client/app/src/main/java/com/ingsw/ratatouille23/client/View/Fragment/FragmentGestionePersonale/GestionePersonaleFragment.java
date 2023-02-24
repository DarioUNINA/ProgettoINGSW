package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale;

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
 * Use the {@link GestionePersonaleFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class GestionePersonaleFragment extends Fragment {

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public GestionePersonaleFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment GestionePersonaleFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static GestionePersonaleFragment newInstance(String param1, String param2) {
        GestionePersonaleFragment fragment = new GestionePersonaleFragment();
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

        fragmentTransaction.replace(R.id.personaleLayout, new PersonaleFragment());
        fragmentTransaction.add(R.id.filtroDataLayout, new FiltroDataFragment());
        fragmentTransaction.add(R.id.statischeLayout, new StatisticheFragment());
        fragmentTransaction.commit();
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_gestione_personale, container, false);

        //inserisci cose

        return rootView;
    }
}