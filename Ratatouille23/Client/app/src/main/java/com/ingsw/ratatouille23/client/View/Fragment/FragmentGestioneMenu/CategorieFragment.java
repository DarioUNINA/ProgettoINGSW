package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Adapter.CategoriaAdapter;
import com.ingsw.ratatouille23.client.View.Adapter.ElementiGMAdapter;
import com.ingsw.ratatouille23.client.View.Dialog.AddCategoryMenuDialog;

import java.util.ArrayList;
import java.util.List;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link CategorieFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class CategorieFragment extends Fragment {

    private FloatingActionButton btnAddCategory;

    private RecyclerView categoriaRecyclerView;

    private CategoriaAdapter categoriaAdapter;
    private CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner;

    private CategoriaPresenter categoriaPresenter;

    private List<Categoria> categoria;
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public CategorieFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment CategorieFragment.
     */
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
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_categorie, container, false);

        btnAddCategory = (FloatingActionButton) rootView.findViewById(R.id.btnAddCategory);


        categoriaRecyclerView = (RecyclerView) rootView.findViewById(R.id.categorieRecyclerView);

        categoriaPresenter = new CategoriaPresenter(CategorieFragment.this);
        //elementoPresenter.getByTavolo(1);//tavolo 1 selezionato
        categoriaAdapter = new CategoriaAdapter( (ArrayList<Categoria>) categoria, getContext(),onCategoriaClickListner);

        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(LinearLayoutManager.VERTICAL);
        categoriaRecyclerView.setLayoutManager(linearLayoutManager);
        categoriaRecyclerView.setAdapter(categoriaAdapter);

        btnAddCategory.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        return rootView;
    }

    public void openDialog(){
        AddCategoryMenuDialog addCategoryMenuDialog = new AddCategoryMenuDialog(this);
        addCategoryMenuDialog.show(getParentFragmentManager(), "NewCategory");
    }
}