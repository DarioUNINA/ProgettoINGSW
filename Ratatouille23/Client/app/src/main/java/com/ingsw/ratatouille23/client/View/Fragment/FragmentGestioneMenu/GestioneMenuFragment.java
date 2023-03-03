package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.ingsw.ratatouille23.client.R;

public class GestioneMenuFragment extends Fragment {

    private ElementiMenuFragment elementiMenuFragment;
    private CategorieFragment categorieFragment;

    private FirebaseAnalytics firebaseAnalytics;

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    public GestioneMenuFragment() {
        // Required empty public constructor
    }


    public static GestioneMenuFragment newInstance(String param1, String param2) {
        GestioneMenuFragment fragment = new GestioneMenuFragment();
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

        firebaseAnalytics = FirebaseAnalytics.getInstance(getContext());

        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Gestione Menu");
        bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "GestioneMenuFragment");
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);


    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_gestione_menu, container, false);

        FragmentManager fragmentManager = getActivity().getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();

        categorieFragment = new CategorieFragment();
        elementiMenuFragment = new ElementiMenuFragment();

        fragmentTransaction.replace(R.id.categorie_layout, categorieFragment);
        fragmentTransaction.add(R.id.elementi_Menu_layout, elementiMenuFragment);
        fragmentTransaction.commit();

        return rootView;
    }

    public ElementiMenuFragment getElementiMenuFragment() {
        return elementiMenuFragment;
    }

    public void setElementiMenuFragment(ElementiMenuFragment elementiMenuFragment) {
        this.elementiMenuFragment = elementiMenuFragment;
    }

    public CategorieFragment getCategorieFragment() {
        return categorieFragment;
    }

    public void setCategorieFragment(CategorieFragment categorieFragment) {
        this.categorieFragment = categorieFragment;
    }
}