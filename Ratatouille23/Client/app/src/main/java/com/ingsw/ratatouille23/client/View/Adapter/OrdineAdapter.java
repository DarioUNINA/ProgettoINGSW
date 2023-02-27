package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.R;

import java.util.ArrayList;
import java.util.List;

public class OrdineAdapter extends RecyclerView.Adapter<OrdineAdapter.OrderHolder> {
        int prova = 2;
    private ArrayList<Ordine> ordini;
    private Context context;
    private OnOrdineClickListner onOrdineClickListner;

    public OrdineAdapter(ArrayList<Ordine> ordini, Context context, OnOrdineClickListner onOrdineClickListner) {
        this.ordini = ordini;
        this.context = context;
        this.onOrdineClickListner = onOrdineClickListner;
    }

     public interface OnOrdineClickListner{
        void onOrdineClicked(int position);
    }

    @NonNull
    @Override
    public OrdineAdapter.OrderHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_ordine, parent, false);

        return new OrderHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull OrdineAdapter.OrderHolder holder, int position) {
        //holder.txtIdOrdine.setText(Integer.toString(ordini.get(position).getIdOrdine()));
        //bisogna passare il tavolo per prendere il nome del cameriere
    }

    @Override
    public int getItemCount() {
        return 3;
        //return ordini.size();
    }

    class OrderHolder extends RecyclerView.ViewHolder{

        TextView txtIdOrdine;
        TextView txtIdCameriere;

        public OrderHolder(@NonNull View itemView) {
            super(itemView);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onOrdineClickListner.onOrdineClicked(getAdapterPosition());
                }
            });
            txtIdOrdine = itemView.findViewById(R.id.txtIdOrdine);
            txtIdCameriere = itemView.findViewById(R.id.txtCameriere);
        }
    }
}
