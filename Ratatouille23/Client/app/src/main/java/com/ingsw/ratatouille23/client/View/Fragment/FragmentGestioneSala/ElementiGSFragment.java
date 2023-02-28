package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGSAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoOrdineDialog;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;
import java.util.List;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link ElementiGSFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class ElementiGSFragment extends Fragment {



    private FloatingActionButton addElementoOrdine, removeElementoOrdine;

    private RecyclerView elementiGSRecyclerView;

    private ElementiGSAdapter elementiGSAdapter;
    private ElementiGSAdapter.OnElementiClickListner onElementiClickListner;

    private ElementoPresenter elementoPresenter;

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public ElementiGSFragment() {
        // Required empty public constructor
    }


    public static ElementiGSFragment newInstance(String param1, String param2) {
        ElementiGSFragment fragment = new ElementiGSFragment();
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

        View rootView = inflater.inflate(R.layout.fragment_elementi_gs, container, false);

        addElementoOrdine = rootView.findViewById(R.id.addElementoOrdine);
        removeElementoOrdine = rootView.findViewById(R.id.removeElementoOrdine);

        elementiGSRecyclerView = rootView.findViewById(R.id.recyclerViewElementiGS);



        //elementoPresenter = new ElementoPresenter(ElementiGSFragment.this);
        //elementoPresenter.getByTavolo(1);//tavolo 1 selezionato
        //elementiGSAdapter = new ElementiGSAdapter( (ArrayList<Elemento>) elementi, getContext(), onElementiClickListner);

        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        elementiGSRecyclerView.setLayoutManager(linearLayoutManager);
        elementiGSRecyclerView.setAdapter(elementiGSAdapter);

        addElementoOrdine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        removeElementoOrdine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //elementiGSAdapter.getCounter().setVisibility(View.INVISIBLE);
                //elementiGSAdapter.getRimozioneCB().setVisibility(View.VISIBLE);
            }
        });

        return rootView;
    }

    public void openDialog(){
        AddElementoOrdineDialog addElementoOrdineDialog = new AddElementoOrdineDialog(this);
        addElementoOrdineDialog.show(getParentFragmentManager(), "newElementoOrdine");
    }

    public ElementiGSAdapter getElementiGSAdapter() {
        return elementiGSAdapter;
    }

    public void setElementiGSAdapter(ElementiGSAdapter elementiGSAdapter) {
        this.elementiGSAdapter = elementiGSAdapter;
    }



    public FloatingActionButton getAddElementoOrdine() {
        return addElementoOrdine;
    }

    public void setAddElementoOrdine(FloatingActionButton addElementoOrdine) {
        this.addElementoOrdine = addElementoOrdine;
    }

    public RecyclerView getElementiGSRecyclerView() {
        return elementiGSRecyclerView;
    }

    public void setElementiGSRecyclerView(RecyclerView elementiGSRecyclerView) {
        this.elementiGSRecyclerView = elementiGSRecyclerView;
    }

    public ElementiGSAdapter.OnElementiClickListner getOnElementiClickListner() {
        return onElementiClickListner;
    }

    public void setOnElementiClickListner(ElementiGSAdapter.OnElementiClickListner onElementiClickListner) {
        this.onElementiClickListner = onElementiClickListner;
    }

    public ElementoPresenter getElementoPresenter() {
        return elementoPresenter;
    }

    public void setElementoPresenter(ElementoPresenter elementoPresenter) {
        this.elementoPresenter = elementoPresenter;
    }

    public FloatingActionButton getRemoveElementoOrdine() {
        return removeElementoOrdine;
    }

    public void setRemoveElementoOrdine(FloatingActionButton removeElementoOrdine) {
        this.removeElementoOrdine = removeElementoOrdine;
    }
}