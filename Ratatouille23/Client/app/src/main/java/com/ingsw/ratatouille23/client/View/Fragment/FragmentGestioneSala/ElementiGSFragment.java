package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

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

    private FloatingActionButton addElementoOrdine;

    private RecyclerView elementiGSRecyclerView;

    private ElementiGSAdapter elementiGSAdapter;
    private ElementiGSAdapter.OnElementiClickListner onElementiClickListner;

    private ElementoPresenter elementoPresenter;

    private List<Elemento> elementi;
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public ElementiGSFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment ElementiGMFragment.
     */
    // TODO: Rename and change types and number of parameters
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

        addElementoOrdine = (FloatingActionButton) rootView.findViewById(R.id.addElementoOrdine);


        elementiGSRecyclerView = (RecyclerView) rootView.findViewById(R.id.recyclerViewElementiGS);

        elementoPresenter = new ElementoPresenter(ElementiGSFragment.this);
        //elementoPresenter.getByTavolo(1);//tavolo 1 selezionato
        elementiGSAdapter = new ElementiGSAdapter( (ArrayList<Elemento>) elementi, getContext(), onElementiClickListner);

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
        return rootView;
    }

    public void openDialog(){
        AddElementoOrdineDialog addElementoOrdineDialog = new AddElementoOrdineDialog(this);
        addElementoOrdineDialog.show(getParentFragmentManager(), "newElementoOrdine");
    }
}