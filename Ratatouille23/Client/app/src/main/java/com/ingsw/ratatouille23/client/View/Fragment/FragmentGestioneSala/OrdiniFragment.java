package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.OrdineAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;

import java.util.ArrayList;
import java.util.List;

public class OrdiniFragment extends Fragment {

    private FloatingActionButton btnAddOrder;
    private RecyclerView ordiniRecyclerView;

    private OrdineAdapter ordineAdapter;
    private OrdineAdapter.OnOrdineClickListner onOrdineCLickListner;

    private OrdinePresenter ordinePresenter;

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


        ordiniRecyclerView = (RecyclerView) rootView.findViewById(R.id.recyclerViewOrdini);
        btnAddOrder = (FloatingActionButton) rootView.findViewById(R.id.btnAddOrder);
        ordinePresenter = new OrdinePresenter(OrdiniFragment.this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());

        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        ordiniRecyclerView.setLayoutManager(linearLayoutManager);

        ArrayList<Ordine> p = new ArrayList<>();
        p.add(new Ordine(1,1,null));
        ordineAdapter = new OrdineAdapter(p, getContext(), onOrdineCLickListner, OrdiniFragment.this);
        ordiniRecyclerView.setAdapter(ordineAdapter);

        btnAddOrder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        return rootView;
    }

    public void openDialog(){
        AddOrderDialog addOrderDialog = new AddOrderDialog(this);
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

    public void setOrdineAdapter(OrdineAdapter ordineAdapter) {
        ordiniRecyclerView.setAdapter(ordineAdapter);
        this.ordineAdapter = ordineAdapter;
        this.ordineAdapter.notifyDataSetChanged();
    }
}