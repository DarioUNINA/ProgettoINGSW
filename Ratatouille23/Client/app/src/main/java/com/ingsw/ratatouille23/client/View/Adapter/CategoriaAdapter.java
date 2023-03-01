package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;

import java.util.ArrayList;

public class CategoriaAdapter extends RecyclerView.Adapter<CategoriaAdapter.CategoriaHolder> {

    private ArrayList<Categoria> categorie;
    private Context context;
    private CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner;

    private Boolean modRimozione;
    private CategorieFragment categorieFragment;

    public CategoriaAdapter(ArrayList<Categoria> categorie, Context context, CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner, CategorieFragment categorieFragment, boolean modRimozione) {
        this.categorie = categorie;
        this.context = context;
        this.onCategoriaClickListner = onCategoriaClickListner;
        this.categorieFragment = categorieFragment;
        this.modRimozione = modRimozione;
    }

    public interface OnCategoriaClickListner{
        void onCategoriaClicked(int position);
    }

    @NonNull
    @Override
    public CategoriaAdapter.CategoriaHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_categoria, parent, false);


        return new CategoriaAdapter.CategoriaHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull CategoriaAdapter.CategoriaHolder holder, int position) {
        if(modRimozione)
            holder.categoriaCB.setVisibility(View.VISIBLE);
        else
            holder.categoriaCB.setVisibility(View.INVISIBLE);

        holder.txtCategoria.setText(categorie.get(position).getNome());
        holder.txtCategoria.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                HomeActivity activity = (HomeActivity)categorieFragment.getActivity();
                activity.getGestioneMenuFragment().getElementiMenuFragment().getElementiGMAdapter().setElementi((ArrayList<Elemento>)categorie.get(position).getElementi(), false);
            }
        });

    }

    @Override
    public int getItemCount() {
        return categorie.size();
    }



    public class CategoriaHolder extends RecyclerView.ViewHolder{

        private TextView txtCategoria;

        private CheckBox categoriaCB;


        public CategoriaHolder(@NonNull View itemView) {
            super(itemView);


            txtCategoria = itemView.findViewById(R.id.txtCategoria);
            categoriaCB = itemView.findViewById(R.id.checkBoxCategorie);

            categoriaCB.setVisibility(View.INVISIBLE);



        }

        public TextView getTxtCategoria() {
            return txtCategoria;
        }

        public void setTxtCategoria(TextView txtCategoria) {
            this.txtCategoria = txtCategoria;
        }

        public CheckBox getCategoriaCB() {
            return categoriaCB;
        }

        public void setCategoriaCB(CheckBox categoriaCB) {
            this.categoriaCB = categoriaCB;
        }
    }

    public CategorieFragment getCategorieFragment() {
        return categorieFragment;
    }

    public void setCategorieFragment(CategorieFragment categorieFragment) {
        this.categorieFragment = categorieFragment;
    }

    public OnCategoriaClickListner getOnCategoriaClickListner() {
        return onCategoriaClickListner;
    }

    public void setOnCategoriaClickListner(OnCategoriaClickListner onCategoriaClickListner) {
        this.onCategoriaClickListner = onCategoriaClickListner;
    }

    public ArrayList<Categoria> getCategorie() {
        return categorie;
    }

    public void setCategorie(ArrayList<Categoria> categorie, boolean modRimozione) {
        this.modRimozione = modRimozione;
        this.categorie.clear();
        this.categorie.addAll(categorie);
        notifyDataSetChanged();
    }
}
