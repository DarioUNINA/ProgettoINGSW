package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.OrdineAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;

import java.util.ArrayList;
import java.util.List;

public class OrdiniFragment extends Fragment {

    private FirebaseAnalytics firebaseAnalytics;
    private FloatingActionButton btnAddOrder, btnRemoveOrder;
    private AppCompatButton btnAnnullaRimozioneOrdine, btnConfermaRimozioneOrdine;
    private RecyclerView ordiniRecyclerView;
    private OrdineAdapter ordineAdapter;
    private OrdineAdapter.OnOrdineClickListner onOrdineCLickListner;

    private MaterialCardView materialBtnOrdini;
    private OrdinePresenter ordinePresenter;
    private TextView idTavolo, nomeCameriere;

    private Tavolo tavoloSelected;


    private List<Ordine> ordini;

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    public OrdiniFragment() {
        // Required empty public constructor
    }


    public static OrdiniFragment newInstance(String param1, String param2) {
        OrdiniFragment fragment = new OrdiniFragment();
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
        View rootView = inflater.inflate(R.layout.fragment_ordini, container, false);

        firebaseAnalytics = FirebaseAnalytics.getInstance(getContext());

        ordiniRecyclerView = (RecyclerView) rootView.findViewById(R.id.recyclerViewOrdini);
        btnAddOrder = (FloatingActionButton) rootView.findViewById(R.id.btnAddOrder);
        btnRemoveOrder = rootView.findViewById(R.id.btnRemoveOrder);
        btnAnnullaRimozioneOrdine = rootView.findViewById(R.id.btnAnnullaRimozioneOrdine);
        btnConfermaRimozioneOrdine = rootView.findViewById(R.id.btnConfermaRimozioneOrdine);
        idTavolo = rootView.findViewById(R.id.txtIdTavolo);
        nomeCameriere = rootView.findViewById(R.id.txtNomeCameriere);
        materialBtnOrdini = rootView.findViewById(R.id.materialBtnOrdini);


        ordinePresenter = new OrdinePresenter(OrdiniFragment.this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());

        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);

        ordineAdapter = new OrdineAdapter(new ArrayList<Ordine>(), getContext(), onOrdineCLickListner, this, false);
        ordiniRecyclerView.setAdapter(ordineAdapter);
        ordiniRecyclerView.setLayoutManager(linearLayoutManager);

        btnConfermaRimozioneOrdine.setVisibility(View.INVISIBLE);
        btnAnnullaRimozioneOrdine.setVisibility(View.INVISIBLE);

        btnAddOrder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(idTavolo.getText()!="") {
                    openDialog(Integer.parseInt(idTavolo.getText().toString().toString()));

                    Bundle bundle = new Bundle();
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Aggiunta Ordine");
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "OrdiniFragment");
                    firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SELECT_ITEM, bundle);
                    firebaseAnalytics.setAnalyticsCollectionEnabled(true);
                }
            }
        });

        btnRemoveOrder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(idTavolo.getText()!="") {
                    btnRemoveOrder.setVisibility(View.INVISIBLE);
                    btnAddOrder.setVisibility(View.INVISIBLE);
                    btnConfermaRimozioneOrdine.setVisibility(View.VISIBLE);
                    btnAnnullaRimozioneOrdine.setVisibility(View.VISIBLE);

                    ArrayList<Ordine> o = new ArrayList<Ordine>();
                    o.addAll(ordineAdapter.getOrdini());
                    o.add(new Ordine());
                    o.remove(o.size() - 1);
                    ordineAdapter.setOrdini(o, true);
                    ordineAdapter.notifyDataSetChanged();


                    Bundle bundle = new Bundle();
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Rimozione Ordine");
                    bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "OrdiniFragment");
                    firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SELECT_ITEM, bundle);
                    firebaseAnalytics.setAnalyticsCollectionEnabled(true);
                }

            }
        });

        btnAnnullaRimozioneOrdine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                btnAddOrder.setVisibility(View.VISIBLE);
                btnRemoveOrder.setVisibility(View.VISIBLE);
                btnConfermaRimozioneOrdine.setVisibility(View.INVISIBLE);
                btnAnnullaRimozioneOrdine.setVisibility(View.INVISIBLE);

                ArrayList<Ordine> o = new ArrayList<Ordine>();
                o.addAll(ordineAdapter.getOrdini());
                o.add(new Ordine());
                o.remove(o.size()-1);
                ordineAdapter.setOrdini(o, false);
            }
        });

        btnConfermaRimozioneOrdine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ordinePresenter.delete(ordineAdapter.getCancellaOrdini());
            }
        });

        if(((HomeActivity) getActivity()).getUtente().getRuolo() != Ruolo.admin && ((HomeActivity) getActivity()).getUtente().getRuolo() != Ruolo.cameriere)
            materialBtnOrdini.setVisibility(View.INVISIBLE);

        return rootView;
    }

    public void openDialog(int idTavolo){
        AddOrderDialog addOrderDialog = new AddOrderDialog(this, idTavolo);
        addOrderDialog.show(getParentFragmentManager(), "newOrdine");
    }

    public OrdineAdapter.OnOrdineClickListner getOnOrdineCLickListner() {
        return onOrdineCLickListner;
    }

    public void setOnOrdineCLickListner(OrdineAdapter.OnOrdineClickListner onOrdineCLickListner) {
        this.onOrdineCLickListner = onOrdineCLickListner;
    }

    public RecyclerView getOrdiniRecyclerView() {
        return ordiniRecyclerView;
    }

    public void setOrdiniRecyclerView(RecyclerView ordiniRecyclerView) {
        this.ordiniRecyclerView = ordiniRecyclerView;
    }

    public OrdineAdapter getOrdineAdapter() {
        return ordineAdapter;
    }

    public Tavolo getTavoloSelected() {
        return tavoloSelected;
    }

    public void setTavoloSelected(Tavolo tavoloSelected) {
        this.tavoloSelected = tavoloSelected;
    }

    public void setOrdineAdapter(OrdineAdapter ordineAdapter) {
        ordiniRecyclerView.setAdapter(ordineAdapter);
        this.ordineAdapter = ordineAdapter;
        this.ordineAdapter.notifyDataSetChanged();
    }

    public TextView getIdTavolo() {
        return idTavolo;
    }

    public void setIdTavolo(TextView idTavolo) {
        this.idTavolo = idTavolo;
    }


    public TextView getNomeCameriere() {
        return nomeCameriere;
    }

    public void setNomeCameriere(TextView nomeCameriere) {
        this.nomeCameriere = nomeCameriere;
    }

    public FloatingActionButton getBtnAddOrder() {
        return btnAddOrder;
    }

    public void setBtnAddOrder(FloatingActionButton btnAddOrder) {
        this.btnAddOrder = btnAddOrder;
    }

    public FloatingActionButton getBtnRemoveOrder() {
        return btnRemoveOrder;
    }

    public void setBtnRemoveOrder(FloatingActionButton btnRemoveOrder) {
        this.btnRemoveOrder = btnRemoveOrder;
    }

    public AppCompatButton getBtnAnnullaRimozioneOrdine() {
        return btnAnnullaRimozioneOrdine;
    }

    public void setBtnAnnullaRimozioneOrdine(AppCompatButton btnAnnullaRimozioneOrdine) {
        this.btnAnnullaRimozioneOrdine = btnAnnullaRimozioneOrdine;
    }

    public AppCompatButton getBtnConfermaRimozioneOrdine() {
        return btnConfermaRimozioneOrdine;
    }

    public void setBtnConfermaRimozioneOrdine(AppCompatButton btnConfermaRimozioneOrdine) {
        this.btnConfermaRimozioneOrdine = btnConfermaRimozioneOrdine;
    }

    public MaterialCardView getMaterialBtnOrdini() {
        return materialBtnOrdini;
    }

    public void setMaterialBtnOrdini(MaterialCardView materialBtnOrdini) {
        this.materialBtnOrdini = materialBtnOrdini;
    }

    public List<Ordine> getOrdini() {
        return ordini;
    }

    public void setOrdini(List<Ordine> ordini) {
        this.ordini = ordini;
    }
}