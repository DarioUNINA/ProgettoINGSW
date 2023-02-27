package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.R;

import java.util.ArrayList;

public class CategoriaAdapter extends RecyclerView.Adapter<CategoriaAdapter.CategoriaHolder> {

    private ArrayList<Categoria> categoria;
    private Context context;
    private CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner;

    public CategoriaAdapter(ArrayList<Categoria> categoria, Context context, CategoriaAdapter.OnCategoriaClickListner onCategoriaClickListner) {
        this.categoria = categoria;
        this.context = context;
        this.onCategoriaClickListner = onCategoriaClickListner;
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

    class CategoriaHolder extends RecyclerView.ViewHolder{

        TextView txtCategoria;

        public CategoriaHolder(@NonNull View itemView) {
            super(itemView);


            txtCategoria = itemView.findViewById(R.id.txtCategoria);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onCategoriaClickListner.onCategoriaClicked(getAdapterPosition());
                }
            });

        }
    }
}
