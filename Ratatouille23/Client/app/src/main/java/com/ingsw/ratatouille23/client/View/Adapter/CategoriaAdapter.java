package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;

import java.util.ArrayList;

public class CategoriaAdapter extends RecyclerView.Adapter<CategoriaAdapter.CategoriaHolder> {

    private ArrayList<Categoria> categoria;
    private Context context;
    private CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner;

    private CategorieFragment categorieFragment;

    public CategoriaAdapter(ArrayList<Categoria> categoria, Context context, CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner, CategorieFragment categorieFragment) {
        this.categoria = categoria;
        this.context = context;
        this.onCategoriaClickListner = onCategoriaClickListner;
        this.categorieFragment = categorieFragment;
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

        //holder.txtIdOrdine.setText(Integer.toString(ordini.get(position).getIdOrdine()));
        //bisogna passare il tavolo per prendere il nome del cameriere
    }

    @Override
    public int getItemCount() {
        return 3;
        //return ordini.size();
    }



    public class CategoriaHolder extends RecyclerView.ViewHolder{

        private TextView txtCategoria;

        private CheckBox categoriaCB;


        public CategoriaHolder(@NonNull View itemView) {
            super(itemView);


            txtCategoria = itemView.findViewById(R.id.txtCategoria);
            categoriaCB = itemView.findViewById(R.id.checkBoxCategorie);


            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onCategoriaClickListner.onCategoriaClicked(getAdapterPosition());
                }
            });
//            getCategorieFragment().getBtnRemoveCategory().setOnClickListener(new View.OnClickListener() {
//                @Override
//                public void onClick(View view) {
//                    getCategorieFragment().getBtnConfermaRimozione().setVisibility(View.VISIBLE);
//                    getCategorieFragment().getBtnAnnullaRimozione().setVisibility(View.VISIBLE);
//                    getCategorieFragment().getBtnRemoveCategory().setVisibility(View.INVISIBLE);
//                    getCategorieFragment().getBtnAddCategory().setVisibility(View.INVISIBLE);
//                    categoriaCB.setVisibility(View.VISIBLE);
//                }
//            });

//            getCategorieFragment().getBtnAnnullaRimozione().setOnClickListener(new View.OnClickListener() {
//                @Override
//                public void onClick(View view) {
//                    getCategorieFragment().getBtnConfermaRimozione().setVisibility(View.INVISIBLE);
//                    getCategorieFragment().getBtnAnnullaRimozione().setVisibility(View.INVISIBLE);
//                    getCategorieFragment().getBtnRemoveCategory().setVisibility(View.VISIBLE);
//                    getCategorieFragment().getBtnAddCategory().setVisibility(View.VISIBLE);
//                    categoriaCB.setVisibility(View.INVISIBLE);
//                }
//            });

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
}
