package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Adapter.CategoriaAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddCategoryMenuDialog;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.ToIntFunction;


public class CategorieFragment extends Fragment {

    private FloatingActionButton btnAddCategory, btnRemoveCategory;

    private AppCompatButton btnAnnullaRimozione, btnConfermaRimozione;

    private RecyclerView categoriaRecyclerView;

    private CategoriaAdapter categoriaAdapter;

    private CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner;

    private CategoriaPresenter categoriaPresenter;

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public CategorieFragment() {
        // Required empty public constructor
    }


    // TODO: Rename and change types and number of parameters
    public static CategorieFragment newInstance(String param1, String param2) {
        CategorieFragment fragment = new CategorieFragment();
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
        View rootView = inflater.inflate(R.layout.fragment_categorie, container, false);

        {
            btnAddCategory = rootView.findViewById(R.id.btnAddCategory);
            btnRemoveCategory = rootView.findViewById(R.id.btnRemoveCategory);
            btnAnnullaRimozione = rootView.findViewById(R.id.btnAnnullaRimozioneCategory);
            btnConfermaRimozione = rootView.findViewById(R.id.btnConfermaRimozioneCategory);

            categoriaRecyclerView = rootView.findViewById(R.id.categorieRecyclerView);

            categoriaPresenter = new CategoriaPresenter(CategorieFragment.this);
            categoriaPresenter.getByMenu(((HomeActivity)getActivity()).getRistorante().getIdMenu());

            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
            linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
            categoriaRecyclerView.setLayoutManager(linearLayoutManager);
            categoriaRecyclerView.setAdapter(categoriaAdapter);

            btnConfermaRimozione.setVisibility(View.INVISIBLE);
            btnAnnullaRimozione.setVisibility(View.INVISIBLE);
        }
        btnRemoveCategory.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                btnConfermaRimozione.setVisibility(View.VISIBLE);
                btnAnnullaRimozione.setVisibility(View.VISIBLE);
                btnRemoveCategory.setVisibility(View.INVISIBLE);
                btnAddCategory.setVisibility(View.INVISIBLE);
                // true));
                ArrayList<Categoria> o = new ArrayList<Categoria>();
                o.addAll(categoriaAdapter.getCategorie());
                o.add(new Categoria());
                o.remove(o.size()-1);
                categoriaAdapter.setCategorie(o, true);
            }
        });
        btnAddCategory.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        btnAnnullaRimozione.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                btnConfermaRimozione.setVisibility(View.INVISIBLE);
                btnAnnullaRimozione.setVisibility(View.INVISIBLE);
                btnRemoveCategory.setVisibility(View.VISIBLE);
                btnAddCategory.setVisibility(View.VISIBLE);
                ArrayList<Categoria> o = new ArrayList<Categoria>();
                o.addAll(categoriaAdapter.getCategorie());
                o.add(new Categoria());
                o.remove(o.size()-1);
                categoriaAdapter.setCategorie(o, false);
            }
        });

        return rootView;
    }

    public void openDialog(){
        AddCategoryMenuDialog addCategoryMenuDialog = new AddCategoryMenuDialog(this);
        addCategoryMenuDialog.show(getParentFragmentManager(), "NewCategory");
    }

    public FloatingActionButton getBtnAddCategory() {
        return btnAddCategory;
    }

    public void setBtnAddCategory(FloatingActionButton btnAddCategory) {
        this.btnAddCategory = btnAddCategory;
    }

    public FloatingActionButton getBtnRemoveCategory() {
        return btnRemoveCategory;
    }

    public void setBtnRemoveElement(FloatingActionButton btnRemoveCategory) {
        this.btnRemoveCategory = btnRemoveCategory;
    }

    public AppCompatButton getBtnAnnullaRimozione() {
        return btnAnnullaRimozione;
    }

    public void setBtnAnnullaRimozione(AppCompatButton btnAnnullaRimozione) {
        this.btnAnnullaRimozione = btnAnnullaRimozione;
    }

    public AppCompatButton getBtnConfermaRimozione() {
        return btnConfermaRimozione;
    }

    public void setBtnConfermaRimozione(AppCompatButton btnConfermaRimozione) {
        this.btnConfermaRimozione = btnConfermaRimozione;
    }

    public void setBtnRemoveCategory(FloatingActionButton btnRemoveCategory) {
        this.btnRemoveCategory = btnRemoveCategory;
    }

    public CategoriaAdapter getCategoriaAdapter() {
        return categoriaAdapter;
    }

    public void setCategoriaAdapter(CategoriaAdapter categoriaAdapter) {
        this.categoriaAdapter = categoriaAdapter;
        categoriaRecyclerView.setAdapter(categoriaAdapter);
        categoriaAdapter.notifyDataSetChanged();
    }

    public CategoriaAdapter.OnCategoriaClickListner getOnCategoriaClickListner() {
        return onCategoriaClickListner;
    }

    public void setOnCategoriaClickListner(CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner) {
        this.onCategoriaClickListner = onCategoriaClickListner;
    }
}