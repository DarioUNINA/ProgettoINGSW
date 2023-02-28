package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu;

import android.os.Bundle;

import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.OrdineAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;


import java.util.ArrayList;
import java.util.List;


public class ElementiMenuFragment extends Fragment {

    private FloatingActionButton btnPrezzoDecrescente, btnPrezzoCrescente, btnOrdineAlfaCrescente, btnOrdineAlfaDecrescente, btnRemoveElement, btnAddElement;

    private AppCompatButton btnAnnullaRimozione, btnConfermaRimozione;

    private RecyclerView elementiMenuRecyclerView;

    private ElementiGMAdapter elementiGMAdapter;
    private ElementiGMAdapter.OnElementiClickListner onElementiClickListner;

    private ElementoPresenter elementoPresenter;

    private List<Elemento> elementi;
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

        {
            btnPrezzoDecrescente = rootView.findViewById(R.id.btnPrezDecrescente);
            btnPrezzoCrescente = rootView.findViewById(R.id.btnPrezzoCrescente);
            btnOrdineAlfaDecrescente = rootView.findViewById(R.id.btnOrdineAlfaDecrescente);
            btnOrdineAlfaCrescente = rootView.findViewById(R.id.btnOrdineAlfaCrescente);
            btnAddElement = rootView.findViewById(R.id.btnAddElement);
            btnRemoveElement = rootView.findViewById(R.id.btnRemoveElement);
            elementiMenuRecyclerView = rootView.findViewById(R.id.recyclerViewElementiGM);
            btnConfermaRimozione = rootView.findViewById(R.id.btnConfermaRimozione);
            btnAnnullaRimozione = rootView.findViewById(R.id.btnAnnullaRimozione);
        }

        btnConfermaRimozione.setVisibility(View.INVISIBLE);
        btnAnnullaRimozione.setVisibility(View.INVISIBLE);

        elementoPresenter = new ElementoPresenter(ElementiMenuFragment.this);
        elementiGMAdapter = new ElementiGMAdapter( (ArrayList<Elemento>) elementi, getContext(),onElementiClickListner);

        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        elementiMenuRecyclerView.setLayoutManager(linearLayoutManager);
        elementiMenuRecyclerView.setAdapter(elementiGMAdapter);

        btnPrezzoDecrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if(btnPrezzoDecrescente.isActivated()) {
                        btnPrezzoDecrescente.setActivated(false);
                        btnPrezzoDecrescente.setImageTintList(ContextCompat.getColorStateList(getContext(),R.color.black));
                    }else {
                        btnPrezzoDecrescente.setActivated(true);
                        Toast.makeText(getActivity(), "Prezzo Decrescente", Toast.LENGTH_SHORT).show();
                        btnPrezzoDecrescente.setBackgroundColor(0);
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

        btnAddElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        btnRemoveElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                elementiGMAdapter.getBtnInfo().setVisibility(View.INVISIBLE);
                elementiGMAdapter.getRemoveCB().setVisibility(View.VISIBLE);
                btnConfermaRimozione.setVisibility(View.VISIBLE);
                btnAnnullaRimozione.setVisibility(View.VISIBLE);
                btnRemoveElement.setVisibility(View.INVISIBLE);
                btnAddElement.setVisibility(View.INVISIBLE);
            }
        });

        btnAnnullaRimozione.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                btnConfermaRimozione.setVisibility(View.INVISIBLE);
                btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                elementiGMAdapter.getBtnInfo().setVisibility(View.VISIBLE);
                elementiGMAdapter.getRemoveCB().setVisibility(View.INVISIBLE);
                btnRemoveElement.setVisibility(View.VISIBLE);
                btnAddElement.setVisibility(View.VISIBLE);
            }
        });

        btnConfermaRimozione.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                for(int i = 0; i<elementi.size();i++){
                    if(elementiGMAdapter.getRemoveCB().isChecked()){
                        }
                    }
                }
        });

        return  rootView;


    }

    public void openDialog(){
        AddElementoMenuDialog addElementoMenuDialog = new AddElementoMenuDialog(this);
        addElementoMenuDialog.show(getParentFragmentManager(), "NewCategory");
    }

    public FloatingActionButton getBtnPrezzoDecrescente() {
        return btnPrezzoDecrescente;
    }

    public void setBtnPrezzoDecrescente(FloatingActionButton btnPrezzoDecrescente) {
        this.btnPrezzoDecrescente = btnPrezzoDecrescente;
    }

    public FloatingActionButton getBtnPrezzoCrescente() {
        return btnPrezzoCrescente;
    }

    public void setBtnPrezzoCrescente(FloatingActionButton btnPrezzoCrescente) {
        this.btnPrezzoCrescente = btnPrezzoCrescente;
    }

    public FloatingActionButton getBtnOrdineAlfaCrescente() {
        return btnOrdineAlfaCrescente;
    }

    public void setBtnOrdineAlfaCrescente(FloatingActionButton btnOrdineAlfaCrescente) {
        this.btnOrdineAlfaCrescente = btnOrdineAlfaCrescente;
    }

    public FloatingActionButton getBtnOrdineAlfaDecrescente() {
        return btnOrdineAlfaDecrescente;
    }

    public void setBtnOrdineAlfaDecrescente(FloatingActionButton btnOrdineAlfaDecrescente) {
        this.btnOrdineAlfaDecrescente = btnOrdineAlfaDecrescente;
    }

    public FloatingActionButton getBtnRemoveElement() {
        return btnRemoveElement;
    }

    public void setBtnRemoveElement(FloatingActionButton btnRemoveElement) {
        this.btnRemoveElement = btnRemoveElement;
    }

    public FloatingActionButton getBtnAddElement() {
        return btnAddElement;
    }

    public void setBtnAddElement(FloatingActionButton btnAddElement) {
        this.btnAddElement = btnAddElement;
    }

    public RecyclerView getElementiMenuRecyclerView() {
        return elementiMenuRecyclerView;
    }

    public void setElementiMenuRecyclerView(RecyclerView elementiMenuRecyclerView) {
        this.elementiMenuRecyclerView = elementiMenuRecyclerView;
    }

    public ElementiGMAdapter getElementiGMAdapter() {
        return elementiGMAdapter;
    }

    public void setElementiGMAdapter(ElementiGMAdapter elementiGMAdapter) {
        this.elementiGMAdapter = elementiGMAdapter;
    }

    public ElementiGMAdapter.OnElementiClickListner getOnElementiClickListner() {
        return onElementiClickListner;
    }

    public void setOnElementiClickListner(ElementiGMAdapter.OnElementiClickListner onElementiClickListner) {
        this.onElementiClickListner = onElementiClickListner;
    }

    public ElementoPresenter getElementoPresenter() {
        return elementoPresenter;
    }

    public void setElementoPresenter(ElementoPresenter elementoPresenter) {
        this.elementoPresenter = elementoPresenter;
    }

    public List<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(ArrayList<Elemento> elementi) {
        this.elementi = elementi;
    }

    public AppCompatButton getBtnAnnullaRimzione() {
        return btnAnnullaRimozione;
    }

    public void setBtnAnnullaRimzione(AppCompatButton btnAnnullaRimzione) {
        this.btnAnnullaRimozione = btnAnnullaRimzione;
    }

    public AppCompatButton getBtnConfermaRimozione() {
        return btnConfermaRimozione;
    }

    public void setBtnConfermaRimozione(AppCompatButton btnConfermaRimozione) {
        this.btnConfermaRimozione = btnConfermaRimozione;
    }
}