package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;

import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.OrdineAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddCategoryMenuDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;
import com.ingsw.ratatouille23.client.View.Dialog.InfoElementDialog;


import java.util.ArrayList;
import java.util.List;


public class ElementiMenuFragment extends Fragment {

    private FirebaseAnalytics firebaseAnalytics;
    private FloatingActionButton btnPrezzoDecrescente, btnPrezzoCrescente, btnOrdineAlfaCrescente, btnOrdineAlfaDecrescente, btnRemoveElement, btnAddElement;

    private AppCompatButton btnAnnullaRimozione, btnConfermaRimozione;

    private RecyclerView elementiMenuRecyclerView;

    private TextView txtCategoriaElementi;

    private ElementiGMAdapter elementiGMAdapter;
    private ElementiGMAdapter.OnElementiClickListner onElementiClickListner;

    private ElementoPresenter elementoPresenter;

    private MaterialCardView materialElementi;

    private Categoria categoriaSelected;

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

        firebaseAnalytics = FirebaseAnalytics.getInstance(getContext());
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
            txtCategoriaElementi = rootView.findViewById(R.id.txtCategoriaPerElementi);
            materialElementi = rootView.findViewById(R.id.materialElementi);
        }

        btnConfermaRimozione.setVisibility(View.INVISIBLE);
        btnAnnullaRimozione.setVisibility(View.INVISIBLE);

        elementoPresenter = new ElementoPresenter(ElementiMenuFragment.this);
        elementiGMAdapter = new ElementiGMAdapter(new ArrayList<Elemento>(), getContext(),onElementiClickListner, false, this);

        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        elementiMenuRecyclerView.setLayoutManager(linearLayoutManager);
        elementiMenuRecyclerView.setAdapter(elementiGMAdapter);

        btnPrezzoDecrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if(!getElementiGMAdapter().getElementi().isEmpty()) {
                        btnPrezzoDecrescente.setActivated(true);
                        Toast.makeText(getActivity(), "Prezzo Decrescente", Toast.LENGTH_SHORT).show();
                        elementoPresenter.getElementiByPrezzoDesc(getElementiGMAdapter().getElementi().get(0).getIdCategoria());

                        btnConfermaRimozione.setVisibility(View.INVISIBLE);
                        btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                        btnRemoveElement.setVisibility(View.VISIBLE);
                        btnAddElement.setVisibility(View.VISIBLE);
                    }
                }
            });

        btnPrezzoCrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if(!getElementiGMAdapter().getElementi().isEmpty()) {
                        btnPrezzoCrescente.setActivated(true);
                        Toast.makeText(getActivity(), "Prezzo Crescente", Toast.LENGTH_SHORT).show();
                        elementoPresenter.getElementiByPrezzoAsc(getElementiGMAdapter().getElementi().get(0).getIdCategoria());

                        btnConfermaRimozione.setVisibility(View.INVISIBLE);
                        btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                        btnRemoveElement.setVisibility(View.VISIBLE);
                        btnAddElement.setVisibility(View.VISIBLE);
                    }
                }
            });

        btnOrdineAlfaCrescente.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if(!getElementiGMAdapter().getElementi().isEmpty()) {
                        btnOrdineAlfaCrescente.setActivated(true);
                        Toast.makeText(getActivity(), "Ordine Alfabetico Crescente", Toast.LENGTH_SHORT).show();
                        elementoPresenter.getElementiByNomeAsc(getElementiGMAdapter().getElementi().get(0).getIdCategoria());

                        btnConfermaRimozione.setVisibility(View.INVISIBLE);
                        btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                        btnRemoveElement.setVisibility(View.VISIBLE);
                        btnAddElement.setVisibility(View.VISIBLE);
                    }
                }
            });

        btnOrdineAlfaDecrescente.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(!getElementiGMAdapter().getElementi().isEmpty()) {
                    btnOrdineAlfaDecrescente.setActivated(true);
                    Toast.makeText(getActivity(), "Ordine Alfabetico Decrescente", Toast.LENGTH_SHORT).show();
                    elementoPresenter.getElementiByNomeDesc(getElementiGMAdapter().getElementi().get(0).getIdCategoria());

                    btnConfermaRimozione.setVisibility(View.INVISIBLE);
                    btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                    btnRemoveElement.setVisibility(View.VISIBLE);
                    btnAddElement.setVisibility(View.VISIBLE);
                }
            }
        });

        btnAddElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(categoriaSelected!=null) {
                    openDialogNuovoElemento(categoriaSelected);

                    Bundle bundle = new Bundle();
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Aggiunta Elemento");
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "ElementiMenuFragment");
                    firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SELECT_ITEM, bundle);
                    firebaseAnalytics.setAnalyticsCollectionEnabled(true);
                }
            }
        });

        btnRemoveElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(categoriaSelected!=null) {
                    btnConfermaRimozione.setVisibility(View.VISIBLE);
                    btnAnnullaRimozione.setVisibility(View.VISIBLE);
                    btnRemoveElement.setVisibility(View.INVISIBLE);
                    btnAddElement.setVisibility(View.INVISIBLE);

                    ArrayList<Elemento> l = new ArrayList<Elemento>();
                    l.addAll(elementiGMAdapter.getElementi());
                    l.add(new Elemento());
                    l.remove(l.size() - 1);
                    elementiGMAdapter.setElementi(l, true);

                    Bundle bundle = new Bundle();
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Rimozione Elemento");
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "ElementiMenuFragment");
                    firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SELECT_ITEM, bundle);
                    firebaseAnalytics.setAnalyticsCollectionEnabled(true);
                }
            }
        });

        btnAnnullaRimozione.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                btnConfermaRimozione.setVisibility(View.INVISIBLE);
                btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                btnRemoveElement.setVisibility(View.VISIBLE);
                btnAddElement.setVisibility(View.VISIBLE);
                ArrayList<Elemento> l = new ArrayList<Elemento>();
                l.addAll(elementiGMAdapter.getElementi());
                l.add(new Elemento());
                l.remove(l.size()-1);
                elementiGMAdapter.setElementi(l, false);
            }
        });

        btnConfermaRimozione.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                elementoPresenter.delete(elementiGMAdapter.getCancellaElementi());
                }
        });


        if(((HomeActivity) getActivity()).getUtente().getRuolo() != Ruolo.admin)
            materialElementi.setVisibility(View.INVISIBLE);

        return  rootView;


    }

    public void openDialogNuovoElemento(Categoria categoria){
        AddElementoMenuDialog addElementoMenuDialog = new AddElementoMenuDialog(this, categoria);
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

    public AppCompatButton getBtnAnnullaRimozione() {
        return btnAnnullaRimozione;
    }

    public void setBtnAnnullaRimozione(AppCompatButton btnAnnullaRimozione) {
        this.btnAnnullaRimozione = btnAnnullaRimozione;
    }

    public MaterialCardView getMaterialElementi() {
        return materialElementi;
    }

    public void setMaterialElementi(MaterialCardView materialElementi) {
        this.materialElementi = materialElementi;
    }

    public TextView getTxtCategoriaElementi() {
        return txtCategoriaElementi;
    }

    public void setTxtCategoriaElementi(TextView txtCategoriaElementi) {
        this.txtCategoriaElementi = txtCategoriaElementi;
    }

    public Categoria getCategoriaSelected() {
        return categoriaSelected;
    }

    public void setCategoriaSelected(Categoria categoriaSelected) {
        this.categoriaSelected = categoriaSelected;
    }
}