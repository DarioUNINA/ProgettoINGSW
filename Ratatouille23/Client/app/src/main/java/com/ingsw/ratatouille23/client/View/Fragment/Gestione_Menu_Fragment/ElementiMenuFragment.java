package com.ingsw.ratatouille23.client.View.Fragment.Gestione_Menu_Fragment;

import android.os.Bundle;

import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.AddCategoryMenuDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;


public class ElementiMenuFragment extends Fragment {

    FloatingActionButton btnPrezzoDecrescente, btnPrezzoCrescente, btnOrdineAlfaCrescente, btnOrdineAlfaDecrescente, btnRemoveElement, btnAddElement;

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
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

        btnPrezzoDecrescente = rootView.findViewById(R.id.btnPrezDecrescente);
        btnPrezzoCrescente = rootView.findViewById(R.id.btnPrezzoCrescente);
        btnOrdineAlfaDecrescente = rootView.findViewById(R.id.btnOrdineAlfaDecrescente);
        btnOrdineAlfaCrescente = rootView.findViewById(R.id.btnOrdineAlfaCrescente);
        btnAddElement= rootView.findViewById(R.id.btnAddElement);
        btnRemoveElement = rootView.findViewById(R.id.btnRemoveElement);

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

        return  rootView;


    }

    public void openDialog(){
        AddElementoMenuDialog addElementoMenuDialog = new AddElementoMenuDialog(this);
        addElementoMenuDialog.show(getParentFragmentManager(), "NewCategory");
    }


}