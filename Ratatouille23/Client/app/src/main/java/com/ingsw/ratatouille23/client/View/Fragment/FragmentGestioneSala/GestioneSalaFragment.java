package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;

import java.util.List;

public class GestioneSalaFragment extends Fragment {

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    private TavoliFragment tavoliFragment;
    private OrdiniFragment ordiniFragment;
    private ElementiGSFragment elementiGSFragment;
    private FirebaseAnalytics firebaseAnalytics;


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
        ordiniFragment = new OrdiniFragment();


        firebaseAnalytics = FirebaseAnalytics.getInstance(getContext());

        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Gestione Sala");
        bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "GestioneSalaFragment");
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment

        View rootView = inflater.inflate(R.layout.fragment_gestione_sala, container, false);

        FragmentManager fragmentManager = getActivity().getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();


        elementiGSFragment = new ElementiGSFragment();
        ordiniFragment = new OrdiniFragment();
        tavoliFragment = new TavoliFragment();

        fragmentTransaction.replace(R.id.tavoli_layout, tavoliFragment);
        fragmentTransaction.add(R.id.ordini_layout, ordiniFragment);
        fragmentTransaction.add(R.id.elementi_GM_layout, elementiGSFragment);
        fragmentTransaction.commit();


        return rootView;
    }

    public TavoliFragment getTavoliFragment() {
        return tavoliFragment;
    }

    public void setTavoliFragment(TavoliFragment tavoliFragment) {
        this.tavoliFragment = tavoliFragment;
    }

    public OrdiniFragment getOrdiniFragment() {
        return ordiniFragment;
    }

    public void setOrdiniFragment(OrdiniFragment ordiniFragment) {
        this.ordiniFragment = ordiniFragment;
    }

    public ElementiGSFragment getElementiGSFragment() {
        return elementiGSFragment;
    }

    public void setElementiGSFragment(ElementiGSFragment elementiGSFragment) {
        this.elementiGSFragment = elementiGSFragment;
    }
}